# -*- coding: utf-8 -*-

import urllib, urllib2, re, sys, json, random, html5lib

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

def addDir(title, url, iconImg="DefaultVideo.png", mode=""):
    sys_url = sys.argv[0] + '?url=' + urllib.quote_plus(url) + '&mode=' + urllib.quote_plus(str(mode))

    item = xbmcgui.ListItem(title, iconImage=iconImg, thumbnailImage=iconImg)
    item.setInfo(type='Video', infoLabels={'Title': title})

    xbmcplugin.addDirectoryItem(handle=h, url=sys_url, listitem=item, isFolder=True)

def addLink(title, infoLabels, url, iconImg="DefaultVideo.png", fanart=""):
    item = xbmcgui.ListItem(title, iconImage=iconImg, thumbnailImage=iconImg)
    item.setInfo(type='Video', infoLabels=infoLabels)
    item.setProperty('fanart_image', fanart)

    xbmcplugin.addDirectoryItem(handle=h, url=url, listitem=item)

def Main():
    site_url = 'http://yourcinema-tv.com'
    html = GetHTML(site_url)
    soup = bs(html, 'html5lib', from_encoding="windows-1251")

    addDir('Поиск', site_url, mode="SEARCH")

    content = soup.find('div', attrs={'class': 'menu-wrap'})
    content = content.find_all('a')
    for num in content:
        if num.string != u'Главная':
            addDir(num.string, site_url + num['href'], mode="FILMS")

    addDir('Жанры', site_url, mode="GENRE")
    addDir('По алфавиту', site_url, mode="A-Z")

def GetGenres(url):
    html = GetHTML(url)
    soup = bs(html, 'html5lib', from_encoding="windows-1251")
    content = soup.find('div', attrs={'class': 'games-genre'})
    content = content.find_all('a')
    for num in content:
        addDir(num.string, url + num['href'], mode="FILMS")

def GetAZ(url):
    html = GetHTML(url)
    soup = bs(html, 'html5lib', from_encoding="windows-1251")
    content = soup.find('div', attrs={'class': 'catalog-nav'})
    content = content.find_all('a')
    for num in content:
        addDir(num.string, urllib.quote_plus((url + num['href']).encode('utf-8')), mode="FILMS")

def GetFilmsList(url_main):
    if url_main.find('catalog') > -1:
        url_main = urllib.unquote_plus(url_main)
    html = GetHTML(url_main)
    soup = bs(html, 'html5lib', from_encoding="windows-1251")
    try:
        content = soup.find('div', attrs={'id': 'dle-content'})
        nav = soup.find('div', attrs={'class': 'navigation'})
        content = content.find_all('a', attrs={'class': 'item'})
        for num in content:
            title = num.find('img')['alt']
            img = num.find('img')['src']
            url = num['href']
            addDir(title, url, img, mode="FILM_LINK")

        nav = nav.find_all('a')
        for num2 in nav:
            if num2.string == u'Вперед':
                if url_main.find('do=search') > -1:
                    n = url_main.find('search_start=') + 13
                    num_page = url_main[n:n+2]
                    num_page_next = str(int(num_page) + 1)
                    url = url_main.replace('search_start='+num_page, 'search_start='+num_page_next)
                else:
                    url = num2['href']
                addDir('---Следующая страница---', url, mode="FILMS")
    except: return False

def Search():
    kbd = xbmc.Keyboard()
    kbd.setDefault('')
    kbd.setHeading("Поиск")
    kbd.doModal()
    if kbd.isConfirmed():
        SearchStr = kbd.getText()
        SearchStr = SearchStr.decode('utf8')
        SearchStr = urllib.quote(SearchStr.encode('cp1251'))
        url = 'http://yourcinema-tv.com/index.php?story=' + SearchStr +'&do=search&subaction=search&search_start=1'
        GetFilmsList(url)
    else:
        return False

def GetFilmLink(url):
    html = GetHTML(url)
    soup = bs(html, 'html5lib', from_encoding="windows-1251")
    content = soup.find('div', attrs={'class': 'short-description'})
    content = content.find_all('li')

    title = soup.find('div', attrs={'class': 'post-title'}).string

    year = content[0].contents[1]
    genre = content[1].contents[1].split(', ')
    country = content[3].contents[1]
    director = content[6].contents[1]
    actors = content[7].contents[1].split(', ')

    content = soup.find('div', attrs={'class': 'image'})
    img = 'http://yourcinema-tv.com' + content.contents[0]['src']

    content = soup.find('ul', attrs={'class': 'tabs_content'})
    content = content.find('li')
    info = content.string

    content = soup.find('p', attrs={'class': 'thumb'})
    fanartlist = content.find_all('img')
    fanart = random.choice(fanartlist)
    fanart = fanart['src']

    infoLabels = {'title': title, 'year': year, 'genre': genre, 'plot': info, 'director': director, 'country': country, 'cast': actors}

    if url.find('/serial') > -1:
        #script = soup.find_all('script', attrs={'type': 'text/javascript'})[13].string
        #n1 = script.find('[[')+3
        #n2 = script.find(']', n1)-1
        #urls = script[n1:n2].split("','")
        vk_show = html[html.find('[[',html.find('vk.show('))+3:html.find(']', html.find('vk.show('))-1]
        urls = vk_show.split("','")
        k = 1
        for num in urls:
            fanart = random.choice(fanartlist)
            fanart = fanart['src']
            if num.find('vk.com/video_ext.php') > -1:
                try:
                    url = GetVKUrl(num)
                    addLink(str(k) + u' серия', infoLabels, url, img, fanart)
                except: pass
            elif num.find('http://moonwalk.cc/video/') > -1:
                try:
                    url = GetMoonwalkUrl(num)
                    addLink(str(k) + u' серия', infoLabels, url, img, fanart)
                except: pass
            k += 1
    else:
        content = soup.find('iframe')
        url = content['src']
        if url.find('vk.com/video_ext.php') > -1:
            try:
                url = GetVKUrl(url)
                addLink(title, infoLabels, url, img, fanart)
            except: pass
        else:
            xbmc.showMessage("yourcinema-tv.com", url + ' неизвестный проигрыватель')

    xbmcplugin.setContent(h, 'movies')

def GetVKUrl(url):
    http = GetHTML(url)
    soup = bs(http, 'html5lib', from_encoding="windows-1251")
    sdata1= soup.find('div', style="position:absolute; top:50%; text-align:center; right:0pt; left:0pt; font-family:Tahoma; font-size:12px; color:#777;")
    if sdata1:
        print sdata1.string.strip().encode('utf-8')
        xbmc.showMessage("yourcinema-tv.com",sdata1.string.strip().encode('utf-8'))
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
            xbmc.showMessage("yourcinema-tv.com", 'Vk parser failed!')
            return False
    return url

def touch(url):
    req = urllib2.Request(url)
    try:
        res=urllib2.urlopen(req)
        res.close()
        return True
    except:
        return False

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
elif mode == 'GENRE': GetGenres(url)
elif mode == 'A-Z': GetAZ(url)
elif mode == 'FILMS': GetFilmsList(url)
elif mode == 'FILM_LINK': GetFilmLink(url)

xbmcplugin.endOfDirectory(h)