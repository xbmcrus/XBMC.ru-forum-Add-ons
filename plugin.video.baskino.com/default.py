#!/usr/bin/python
# -*- coding: utf-8 -*-

import urllib, urllib2, re, sys, json

import html5lib

import xbmc, xbmcaddon, xbmcgui, xbmcplugin

from bs4 import BeautifulSoup as bs

def GetHTML(url):
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.9.0.3) Gecko/2008092417 Firefox/3.0.3',
        'Content-Type': 'application/x-www-form-urlencoded'}
    conn = urllib2.urlopen(urllib2.Request(url, urllib.urlencode({}), headers))
    html = conn.read()
    conn.close()

    return html

def Main():
    site_url = 'http://baskino.com'
    html = GetHTML(site_url)
    soup = bs(html, 'html5lib', from_encoding="utf-8")
    content = soup.find('li', attrs={'class': 'first'})
    content = content.find_all('li')
    addDir('Поиск', site_url + '/index.php', mode="SEARCH")
    addDir('Новинки', site_url + '/new/', mode="FILMS")
    addDir('Сериалы', site_url + '/serial/', mode="FILMS")
    for num in content:
        if (num.find('a')['href'] != ('/mobile/' and '/announcement/')):
            title = num.find('a').contents[0]
            url = site_url + num.find('a')['href']
            addDir(title, url, mode="FILMS")

def addDir(title, url, iconImg="DefaultVideo.png", mode=""):
    sys_url = sys.argv[0] + '?url=' + urllib.quote_plus(url) + '&mode=' + urllib.quote_plus(str(mode))

    item = xbmcgui.ListItem(title, iconImage=iconImg, thumbnailImage=iconImg)
    item.setInfo(type='Video', infoLabels={'Title': title})

    xbmcplugin.addDirectoryItem(handle=h, url=sys_url, listitem=item, isFolder=True)

def addLink(title, infoLabels, url, iconImg="DefaultVideo.png"):
    item = xbmcgui.ListItem(title, iconImage=iconImg, thumbnailImage=iconImg)
    item.setInfo(type='Video', infoLabels=infoLabels)

    xbmcplugin.addDirectoryItem(handle=h, url=url, listitem=item)

def Search():
    kbd = xbmc.Keyboard()
    kbd.setDefault('')
    kbd.setHeading("Поиск")
    kbd.doModal()
    if kbd.isConfirmed():
        SearchStr = kbd.getText()
        url = 'http://baskino.com/index.php?do=search&subaction=search&actors_only=0&search_start=1&full_search=0&result_from=1&result_from=1&story=' + SearchStr
        GetFilmsList(url)
    else:
        return False

def GetFilmsList(url_main):
    html = GetHTML(url_main)
    soup = bs(html, 'html5lib', from_encoding="utf-8")
    content = soup.find_all('div', attrs={'class': 'postcover'})
    for num in content:
        title = num.find('img')['title']
        img = num.find('img')['src']
        url = num.find('a')['href']
        addDir(title, url, img, mode="FILM_LINK")
    try:
        nav = soup.find('div', attrs={'class': 'navigation'})
        nav = nav.find_all('a')
        for num2 in nav:
            title = num2.contents[0].encode('utf-8')
            if (title == 'Вперед'):
                if url_main.find('do=search') > -1:
                    num_page = (url_main[83])
                    num_page_next = str(int(num_page) + 1)
                    url = url_main.replace('search_start='+num_page, 'search_start='+num_page_next)
                else:
                    url = num2['href']
                addDir('---Следующая страница---', url, mode="FILMS")
    except: return False

def GetFilmLink(url):
    html = GetHTML(url)
    soup = bs(html, 'html5lib', from_encoding="utf_8")
    content = soup.find('div', attrs={'class': 'info'})
    content = content.find_all('tr')
    for num in content:
        num = num.find_all('td')
        if num[0].string == u'Название:':
            title = num[1].string
        if num[0].string == u'Год:':
            year = num[1].string
        if num[0].string == u'Страна:':
            country = num[1].string
        if num[0].string == u'Режиссер:':
            director = num[1].string
        if num[0].string == u'Жанр:':
            genre = num[1].string
        if num[0].string == u'Время:':
            duration = num[1].string

    content = soup.find('div', attrs={'id': re.compile('^news')})
    info = content.contents[0]
    infoLabel = {'title': title, 'year': year, 'genre': genre, 'plot': info, 'director': director, 'country': country}

    content = soup.find('div', attrs={'class': 'mobile_cover'})
    img = content.find('img', attrs={'itemprop': 'image'})['src']

    if url.find('/serial/') > -1:
        try:
            script = soup.find('div', attrs={'class': 'basplayer'})
            script = script.find('div', attrs={'class': 'inner'})
            script = script.find('script', attrs={'type': 'text/javascript', 'src': '', 'language': ''}).string
            data = script.split("var tvs_codes = ", 1)[-1].rsplit(';', 1)[0]
            data = json.loads(data)

            seasons = soup.find('div', attrs={'class': 'tvs_slides_wrap tvs_slides_seasons'})
            seasons = seasons.find_all('span')

            episode = soup.find_all('div', attrs={'id': re.compile('^episodes-')})

            k = 0
            for s in seasons:
                epis = episode[k].find_all('span')
                for ep in epis:
                    n1 = ep['onclick'].find('(') + 1
                    n2 = ep['onclick'].find(',', n1)
                    n = ep['onclick'][n1:n2]
                    if data[n].find('vk.com') > -1:
                        n1 = data[n].find('src="') + 5
                        n2 = data[n].find('"', n1)
                        url = data[n][n1:n2]
                        url = GetVKUrl(url)
                    else:
                        url = GetFLASHUrl(data[n])
                    addLink(s.string + ' | ' + ep.string, infoLabel, url, iconImg=img)
                k = k + 1
        except: pass
    else:
        content = soup.find_all('div', attrs={'class': 'player_code'})
        for num in content:
            if num.find('iframe') != None:
                url = num.find('iframe')['src']
                if re.search('(vk.com|vkontakte.ru|vk.me)', url):
                    url = GetVKUrl(url)
                    addLink(title + ' [VK]', infoLabel, url, iconImg=img)
                #elif 'gidtv.cc' in url:
                #    url = GetGIDTVUrl(url)
                #    addLink(title + ' [GIDTV]', infoLabel, url, iconImg=img)
                elif 'moonwalk.cc' in url:
                    url = GetMoonwalkUrl(url)
                    addLink(title + ' [HD]', infoLabel, url, iconImg=img)
            if num.find('div', attrs={'id': re.compile('^videoplayer')}) <> None:
                url = num.find('script').string
                url = GetFLASHUrl(url)
                if num['id'] == 'basplayer_original':
                    addLink(title + ' [ORIGINAL]', infoLabel, url, iconImg=img)
                else:
                    addLink(title + ' [MP4]', infoLabel, url, iconImg=img)

    xbmcplugin.setContent(h, 'movies')

def GetVKUrl(url):
    http = GetHTML(url)
    soup = bs(http, 'html5lib', from_encoding="utf-8")
    sdata1= soup.find('div', style="position:absolute; top:50%; text-align:center; right:0pt; left:0pt; font-family:Tahoma; font-size:12px; color:#777;")
    if sdata1:
        print sdata1.string.strip().encode('utf-8')
        xbmc.showMessage("Cinema-hd.ru.a",sdata1.string.strip().encode('utf-8'))
        return False
    for rec in soup.find_all('param', {'name':'flashvars'}):
        fv={}
        for s in rec['value'].split('&'):
            sdd=s.split('=',1)
            fv[sdd[0]]=sdd[1]
            if s.split('=',1)[0] == 'uid':
                uid = s.split('=',1)[1]
            if s.split('=',1)[0] == 'vtag':
                vtag = s.split('=',1)[1]
            if s.split('=',1)[0] == 'host':
                host = s.split('=',1)[1]
            if s.split('=',1)[0] == 'vid':
                vid = s.split('=',1)[1]
            if s.split('=',1)[0] == 'oid':
                oid = s.split('=',1)[1]
            if s.split('=',1)[0] == 'hd':
                hd = s.split('=',1)[1]
        url = host+'u'+uid+'/videos/'+vtag+'.240.mp4'
        if int(hd)==3:
            url = host+'u'+uid+'/videos/'+vtag+'.720.mp4'
        if int(hd)==2:
            url = host+'u'+uid+'/videos/'+vtag+'.480.mp4'
        if int(hd)==1:
            url = host+'u'+uid+'/videos/'+vtag+'.360.mp4'
    if not touch(url):
        try:
            if int(hd)==3:
                url = fv['cache720']
            if int(hd)==2:
                url = fv['cache480']
            if int(hd)==1:
                url = fv['cache360']
        except:
            print 'Vk parser failed'
            xbmc.showMessage("Baskino.com", 'Vk parser failed!')
            return False
    return url

def GetMoonwalkUrl(url):
    token=re.findall('http://moonwalk.cc/video/(.+?)/',url)[0]

    req = urllib2.Request('http://moonwalk.cc/sessions/create_session',data='video_token='+token+'&video_secret=HIV5')
    try:
        response = urllib2.urlopen(req)
        html=response.read()
        response.close()
    except Exception, e:
        print 'GET: Error getting page '+url
        return None

    page=json.loads(html)
    url = page["manifest_m3u8"]
    return url

def GetGIDTVUrl(url):
    http = GetHTML(url)
    n1 = http.find('setFlash(') + 10
    n2 = http.find('.mp4', n1) + 4
    url = http[n1:n2]
    return url

def GetFLASHUrl(url):
    n1 = url.find('file:') + 6
    n2 = url.find('.mp4', n1) + 4
    url = url[n1:n2]
    return url

def touch(url):
    req = urllib2.Request(url)
    try:
        res=urllib2.urlopen(req)
        res.close()
        return True
    except:
        return False

def get_params():
    param=[]
    paramstring=sys.argv[2]
    if len(paramstring)>=2:
        params=sys.argv[2]
        cleanedparams=params.replace('?','')
        if (params[len(params)-1]=='/'):
            params=params[0:len(params)-2]
        pairsofparams=cleanedparams.split('&')
        param={}
        for i in range(len(pairsofparams)):
            splitparams={}
            splitparams=pairsofparams[i].split('=')
            if (len(splitparams))==2:
                param[splitparams[0]]=splitparams[1]

    return param

h = int(sys.argv[1])
params = get_params()

mode = None
url = None

try: mode = urllib.unquote_plus(params['mode'])
except: pass

try: url = urllib.unquote_plus(params['url'])
except: pass

if mode == None: Main()
elif mode == 'SEARCH': Search()
elif mode == 'FILMS': GetFilmsList(url)
elif mode == 'FILM_LINK': GetFilmLink(url)

xbmcplugin.endOfDirectory(h)