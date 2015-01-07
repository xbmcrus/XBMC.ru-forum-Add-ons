#!/usr/bin/python
# -*- coding: utf-8 -*-

import urllib, urllib2
import sys, os, re, json, random
import xbmc, xbmcgui, xbmcplugin, xbmcaddon

from bs4 import BeautifulSoup as bs
#from bs4.diagnose import diagnose
from urlparse import parse_qs

Addon = xbmcaddon.Addon(id = 'plugin.video.cinema-hd.ru.a')

addon_icon    = Addon.getAddonInfo('icon')
addon_fanart  = Addon.getAddonInfo('fanart')
addon_path    = Addon.getAddonInfo('path')
addon_id      = Addon.getAddonInfo('id')
addon_author  = Addon.getAddonInfo('author')
addon_name    = Addon.getAddonInfo('name')
addon_version = Addon.getAddonInfo('version')

#Get XBMC version
xbmcver = xbmc.getInfoLabel("System.BuildVersion").split()[0].split('-')[0]
xbmcver = float(xbmcver)

try:
	sys.path.append(os.path.join(os.path.dirname(__file__), "../plugin.video.unified.search"))
	from unified_search import UnifiedSearch
except: pass


def get_params(paramstring):
	params = []
	if len(paramstring) >= 2:
		params = {}
		if '?' in paramstring: qindex = paramstring.index('?')
		else: qindex = -1 
		cleanedparams = paramstring[qindex + 1:]
		pairsofparams = cleanedparams.split('&')
		for i in range(len(pairsofparams)):
			splitparams = {}
			splitparams = pairsofparams[i].split('=')
			if (len(splitparams)) == 2:
				params[splitparams[0]] = splitparams[1]
	if len(params) > 0:
		for p in params:
			params[p] = urllib.unquote_plus(params[p])
	return params

def GET(url, ref = None, opts = '', post = None):
	req = urllib2.Request(url, data = post)
	print "GET: " + url
	if ref: req.add_header('Referer', ref)
	if 'xmlhttp' in opts:
		req.add_header('X-Requested-With', 'XMLHttpRequest')
	if 'timeout' in opts: timeout = 0.2
	else: timeout = 5
	try:
		response = urllib2.urlopen(req, timeout = timeout)
		html = response.read()
		if 'headers' in opts: headers = response.info()
		else: headers = None
		response.close()
		if headers: result = (html, headers)
		else: result = html
		return result
	except Exception, e:
		print 'GET: Error getting page ' + url + ' (' + str(e) + ')'
		ShowMessage('HTTP error', 'Error getting page: ' + url)
		return None

def construct_request(params):
	return '%s?%s' % (sys.argv[0], urllib.urlencode(params))
    
def ShowMessage(heading, message, times = 6000):
	xbmc.executebuiltin('XBMC.Notification("%s", "%s", %s)' % (heading, message, times))

def clean_html(page, opts = None):
	page = page.replace('<br />','').replace(';="" ','').replace('</scr"+"ipt>','</script>')
	if opts:
		if 'ext' in opts:
			r1 = re.compile(r'<meta name="description".*?/>', flags = re.S)
			r2 = re.compile(r'<meta itemprop="description".*?>$', flags = re.M)
			page = r1.sub('', page, count = 1)
			page = r2.sub('', page, count = 1)
	return page

def touch(url):
	req = urllib2.Request(url)
	try:
		res=urllib2.urlopen(req)
		res.close()
		return True
	except:
		return False

def removed_message_special_conditions(tag):
	return tag.name == 'span' and tag.parent.name == 'b'

def Search(params):
	mode = params['mode'] if 'mode' in params else None
	kbd = xbmc.Keyboard()
	#kbd.setDefault('')
	if mode == 'clips': kbd.setHeading("Поиск по клипам")
	else: kbd.setHeading("Поиск")
	kbd.doModal()
	uri = {}
	if kbd.isConfirmed():
		'''try:
            out = trans.detranslify(kbd.getText())
            out = str(out.encode("utf-8"))
        except:
            out = str(kbd.getText())'''
		query = urllib.quote_plus(kbd.getText())
	else: return True
	if mode == 'clips': uri['url'] = '/load/'
	else: uri['url'] = '/board'
	uri['post'] = 'query=%s&a=2' % query
	uri['mode'] = 'search'
	ListCat(uri)


def Main(params):
	listitem = xbmcgui.ListItem('<ПОИСК>', thumbnailImage = addon_icon)
	uri = construct_request({
		'func': 'Search'
		})
	xbmcplugin.addDirectoryItem(hos, uri, listitem, True)

	listitem=xbmcgui.ListItem('Новое', iconImage = addon_icon)
	uri = construct_request({
		'func': 'ListCat',
		'url': '/board/0-1'
		})
	xbmcplugin.addDirectoryItem(hos, uri, listitem, True)

	http = GET('http://cinema-hd.ru/')
	if http == None: return False
	soup = bs(http, 'html.parser', from_encoding = "utf-8")
	http = clean_html(http)
	#content = soup.find('ul',attrs={'class':'subs'})
	content = soup.find('li',attrs={'class':'cat-menu sub'})
	content = content.find_all('li')
	for num in content:
		title = num.find('a').string #.encode('utf-8')
		url = num.find('a')['href']
		#print url
		title = title.replace(u'Все','').replace(u'Вся','').replace(u' фильмы','').strip().capitalize()
		
		listitem = xbmcgui.ListItem(title, iconImage = addon_icon, thumbnailImage = addon_icon)
		uri = construct_request({
			'func': 'ListCat',
			'url': url
			})
		if 'board' in url: xbmcplugin.addDirectoryItem(hos, uri, listitem, True)

	li = xbmcgui.ListItem("Клипы", iconImage = addon_icon, thumbnailImage = addon_icon)
	uri = construct_request({
		'func': 'ListCat',
		'url': "/load/"
		})
	xbmcplugin.addDirectoryItem(hos, uri, li, True)

	xbmcplugin.endOfDirectory(hos)


def ListCat(params):
	pq = int(Addon.getSetting('ipp')) + 1
	mode = params['mode'] if 'mode' in params else None
	if unified:
		params['url'] = '/board'
		params['post'] = 'query=%s&a=2' % params['keyword']
		unified_search_results = []
	blink = 'http://cinema-hd.ru' + params['url'] #base
	post = params['post'] if 'post' in params else None
	if mode == 'search':
		searchmode = True
		pq = 1
	else:
		searchmode = False
	innerpage = int(params['page']) if 'page' in params else 1

	if '/load/' in blink and innerpage == 1 and not searchmode:
		li = xbmcgui.ListItem('<Поиск клипов>', thumbnailImage = addon_icon)
		uri = construct_request({
			'func': 'Search',
			'mode': 'clips'
			})
		xbmcplugin.addDirectoryItem(hos, uri, li, True)
	
	for page in range((innerpage - 1) * pq + 1, innerpage * pq + 1):
		if page > 1:
			if re.search('board/0-1', blink): url = blink.replace('1', str(page)) #"Новое"
			elif re.search('/load/', blink): url = blink + '0-' + str(page) #Клипы
			else: url = blink + '-' + str(page) + '-2'
		else: url = blink
		http = GET(url, post = post)
		if not http: break
		http = clean_html(http)
		soup = bs(http, 'html.parser', from_encoding = 'utf-8')
		content = soup.find_all('div', attrs = {'id': re.compile('entryID[0-9]+')})
		for item in content:
			#sdata = item.find('a', href=re.compile('http://cinema-hd.ru/board/.+'))
			data = item.find('a')
			#print data
			link = data['href']
			#title = data.find('h2').string.encode('utf-8')
			title = data.string.encode('utf-8')
			#print title
			#img = item.find('img', width='250')['src']
			img = item.find('img')['src']
			#data1 = item.find_all('span', style = "font-family:'Georgia'")
			data1 = item.find('div', class_ = 'item-info inline')
			#print [i for i in data1]
			try:
				genredata = data1.p
				plotdata = data1.div
				genre = ' '.join(genredata.stripped_strings).encode('utf-8')
				plot = ' '.join(plotdata.stripped_strings).encode('utf-8')
			except:
				genre = plot = ''
			uri = construct_request({
				'func': 'ListSeries',
				'url': link,
				'title': title,
				'image': img
				})
			if unified:
				print addon_id, uri
				usurl = re.compile(addon_id + '(.+)$').findall(uri)[0]
				uspath = {
					'title': title,
					'url': urllib.quote_plus(usurl),
					'image': img,
					'plugin': addon_id
					 }
				unified_search_results.append(uspath)
			else:
				li = xbmcgui.ListItem(title, iconImage = img, thumbnailImage = img)
				li.setInfo(type = "video", infoLabels = {"title": title, "plot": plot, "genre": genre})
				#listitem.setProperty('IsPlayable', 'true')
				xbmcplugin.addDirectoryItem(hos, uri, li, True)
   
	if not searchmode:
		linp = xbmcgui.ListItem('< Следующая страница >', iconImage = addon_icon, thumbnailImage = addon_icon)
		uri = construct_request({
			'func': 'ListCat',
			'page': innerpage + 1,
			'url': params['url']
			})
		xbmcplugin.addDirectoryItem(hos, uri, linp, True)
	if unified:
		UnifiedSearch().collect(unified_search_results)
		return True
	xbmcplugin.setContent(hos, 'movies')
	xbmcplugin.endOfDirectory(hos)


def ListSeries(params):
	prtitle = ''
	infoSet = {}
	common_list = ['ФИЛЬМ', 'СМОТРЕТЬ', 'ТЕЛЕШОУ']
	common_titles_list = ['фильм', 'Фильм', 'документальный фильм', 'мультфильм', 'Телешоу', 'Концерт']

	http = GET(params['url'])
	http = clean_html(http, 'ext')

	#diagnose(http.decode('utf-8').encode('ascii','replace'))
	try: soup = bs(http, 'html5lib', from_encoding = "utf-8")
	except Exception, e:
		print "BS load error: " + str(e)
		ShowMessage(addon_name, "BS error")
		return True
	#print soup.prettify('utf-8')
	content = soup.find('div', class_ = 'full-item')
	#print content.prettify('utf-8')
	if not content:
		print "Content container is not found, used uncut html"
		content = soup
	try: 
		videos = content.find_all('iframe')
	except Exception, e:
		print "BS exception: " + str(e)
		ShowMessage(addon_name, "Exception in BS module")
		return True
	#Layout B
	if len(videos) == 0: 
		videos = content.find_all('embed', allowscriptaccess = "always", wmode = "opaque")
		#layout_mark = 'B'
		if len(videos) > 0: print "Layout B"
	if len(videos) == 0:
		removedmes = content.find(removed_message_special_conditions, attrs = {"style": "color:red"})
		if removedmes:
			ShowMessage(addon_name, removedmes.string.encode('utf-8'))
			return True
		else:
			print "Failed to parse"
			ShowMessage(addon_name, "Неизвестный тип верстки")
			return True
	#print videos

	#plot = content.find('span', itemprop = "description")
	plot = content.find('div', class_ = "item-info inline")
	if plot:
		imdata = plot.find_parent('div', class_ = 'full-item-content')
		plot = ' '.join(plot.stripped_strings).encode('utf-8')
		infoSet['plot'] = plot
		imdata = imdata.find('a', target = "_blank", class_ = "ulightbox")
		img = imdata['href']
		#print img
	else:
		img = params['image']

	#Metadata
	try:
		metadata = content.find('ul', class_ = 'film-tech-info')
		metadata = metadata.find_all('li')
		director = metadata.find('meta', itemprop = "director")['content'].encode('utf-8')
		genre = content.find('meta', itemprop = "genre")['content'].encode('utf-8')
		actors = content.find('meta', itemprop = "actor")['content'].encode('utf-8').split(', ')
		year = content.find('meta', itemprop = "dateCreated")['content'].encode('utf-8')
		infoSet.update({
			'genre': genre,
			'year': int(year),
			'director': director,
			'cast': actors
			})
	except Exception, e: print e

	#Fanart
	fanartcontlist = content.find_all('a', attrs = {"class": "ulightbox", "data-fancybox-group": "screenshots"})
	if fanartcontlist: fanartlist = [i['href'] for i in fanartcontlist]
	else: fanartlist = None
	#print fanartlist
	

	for iframe in videos:
		#Layout 1
		title = iframe.find_previous_sibling('span', style=re.compile("color\:.?(#ff9900|orange|yellow)"))
		if title: print "Layout 1"
		#Layout 2
		if not title:
			title = iframe.find_parent('span', style=re.compile("color\:.?(#ff9900|orange|yellow)"))
			if title: print "Layout 2"
		#Layout 3
		if not title:
			title = iframe.find_previous('font', color = "ff9900")
			if title: 
				titlecont = list(title.stripped_strings)
				if len(titlecont) == 0:
					title = title.find_previous('font', color = "ff9900")
					if title: print "Layout 3b"
				elif not title.font: print "Layout 3"
			#Layout 3a
			if title and title.font:
				titlecontalt = list(title.stripped_strings)
				title.font.decompose()
				titlecont = list(title.stripped_strings)
				if len(titlecont) == 0:
					if len(titlecontalt) > 0:
						title = titlecontalt[0].encode('utf-8')
						print "Layout 3a1"
					else: title = None
				else:
					print "Layout 3a"
		#Layout 4
		if not title:
			title = iframe.find_previous('span', style = re.compile("color\:.?(#ff9900|orange|yellow)"))
			#print title
			#print str(type(title.contents[0]))
			if title and str(type(title.contents[0])) == "<class 'bs4.element.Tag'>":
				#if title.contents[0].has_attr('style') and title.contents[0]['style']=='font-size:13pt':
				title = None
			else:
				if title: print "Layout 4"

		#print type(title)
		if str(type(title)) == "<class 'bs4.element.Tag'>":
			titlecont = list(title.stripped_strings)
			title = titlecont[0].encode('utf-8')
		for common in common_list:
			if title and common in title:
				title = title.replace(common, '',  1).strip()

		#Layout 5
		if not title or title in common_titles_list:
			title = content.find('meta', itemprop = "name")
			if title:
				title = title['content'].encode('utf-8')
				print "Layout 5"

		#Layout N
		if not title:
			title = params['title']
			print "Layout N"

		#don't add trailer with the same name
		if len(videos) == 2 and title == prtitle: break
		prtitle = title

		#print title, url
		if title == 'трейлер' or title == 'Трейлер': continue

		url = iframe['src']

		if 'moonwalk.cc/serial' in url:
			ListMoonwalkSeries(url, params['url'])
			continue

		li = xbmcgui.ListItem(title, iconImage = addon_icon, thumbnailImage = img)
		uri = construct_request({
			'func': 'Play',
			'url': url
			})
		li.setInfo(type = "video", infoLabels = infoSet)
		if fanartlist:
			fanart = random.choice(fanartlist)
			if xbmcver >= 13: li.setArt({'fanart': fanart})
			else: li.setProperty('fanart_image', fanart)
		li.setProperty('IsPlayable', 'true')
		xbmcplugin.addDirectoryItem(hos, uri, li)

	xbmcplugin.setContent(hos, 'movies')
	#skin = xbmc.getSkinDir()
	#if skin == 'skin.aeonmq5':
	#	print xbmc.getInfoLabel('Container.Viewmode')
	#	xbmc.executebuiltin('Container.SetViewMode(55)')
	xbmcplugin.endOfDirectory(hos)


def ListMoonwalkSeries(url,ref):
	http = GET(url)
	soup = bs(http)
	seasonsdata = soup.find('select', id = 'season')
	seasonsdata1 = seasonsdata.find_all('option')
	seasonslist = [int(i["value"]) for i in seasonsdata1]
	#seasonslist = [int(i["value"]) for i in seasonsdata.contents]
	seasonscount = max(seasonslist)
	for season in seasonslist:
		li = xbmcgui.ListItem("Сезон " + str(season))
		uri = construct_request({
			'func': 'ListMoomwalkEpisodes',
			'url': url[0:url.index('?')],
			'season': season,
			'ref': ref
			})
		xbmcplugin.addDirectoryItem(hos, uri, li, True)
	
	xbmcplugin.endOfDirectory(hos)

def ListMoomwalkEpisodes(params):
	url = params['url']
	season = params['season']
	ref = params['ref']
	http = GET(url + '?season=' + season + '&referer=' + ref)
	soup = bs(http)
	episodesdata = soup.find('select', id = 'episode')
	episodesdata1 = episodesdata.find_all('option')
	print episodesdata1
	episodeslist = [int(i["value"]) for i in episodesdata1]
	for episode in episodeslist:
		li = xbmcgui.ListItem("Серия " + str(episode))
		uri = construct_request({
			'func': 'Play',
			'url': url + '?season=' + season + '&episode=' + str(episode)
			})
		li.setProperty('IsPlayable', 'true')
		xbmcplugin.addDirectoryItem(hos, uri, li)
	
	xbmcplugin.endOfDirectory(hos)


def Play(params):
	url = params['url']
	if url.find('//') == 0: url = url[2:]
	if url.find('http') == -1: url = 'http://' + url
	
	if 'ivi.ru' in url:
		if xbmc.getCondVisibility('System.HasAddon(plugin.video.ivi.ru)') == 0:
			ShowMessage(addon_name, "Для просмотра данного видео необходим плагин ivi.ru")
			return True
		id = re.findall('videoId=(\d+)', url)
		if id:
			id = id[0]
			print "IVI.RU, id= " + str(id)
			link = "plugin://plugin.video.ivi.ru?func=playid&id=" + id
			#xbmc.executebuiltin('XBMC.RunScript(plugin.video.ivi.ru,, ?func=playid&id=%s)'%(id))
		else:
			print "IVI.RU video id is not found, " + url
			return True
	else:
		link = GetVideo(url)
		if link == False: return True

	item = xbmcgui.ListItem(path = link)
	item.setProperty('IsPlayable', 'true')
	xbmcplugin.setResolvedUrl(hos, True, item)


def GetVideo(url):
	if re.search('(vk\.com|vkontakte\.ru)', url):
		http = GET(url)
		soup = bs(http, from_encoding = "windows-1251")
		#sdata1=soup.find('div',class_="scroll_fix_wrap",id="page_wrap")
		sdata1=soup.find('div',style="position:absolute; top:50%; text-align:center; right:0pt; left:0pt; font-family:Tahoma; font-size:12px; color:#777;")
		if sdata1:
			print sdata1.string.strip().encode('utf-8')
			ShowMessage("Cinema-hd.ru.a",sdata1.string.strip().encode('utf-8'))
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
			#print fv
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
				print 'Vk parser is failed'
				ShowMessage(addon_id, 'Vk parser is failed')
				return False
		#url = url.replace('vk.me','vk.com')
		#print url
		return url
	
	elif 'moonwalk.cc/video' in url:
		if xbmcver < 14: ShowMessage(addon_name, "Неизвестный видеохостинг: " + url)
		print url
		token=re.findall('moonwalk.cc/video/(.+?)/', url)[0]
		page=GET('http://moonwalk.cc/sessions/create_session', post = 'video_token=' + token + '&video_secret=HIV5')
		page=json.loads(page)
		url = page["manifest_m3u8"]
		#print url
		return url
		
	elif 'moonwalk.cc/serial' in url:
		if xbmcver < 14: ShowMessage(addon_name, "Неизвестный видеохостинг: " + url)
		page = GET(url)
		token = re.findall("video_token: '(.*)',", page)
		page = GET('http://moonwalk.cc/sessions/create_session', post = 'video_token=' + token[0] + '&video_secret=HIV5')
		page = json.loads(page)
		url = page["manifest_m3u8"]
		#print url
		return url
	
	elif 'rutube.ru' in url:
		data = GET(url)
		#print data
		match = re.compile('"m3u8": "(.+?)"').findall(data)
		if len(match) > 0:
			url = match[0]
			return url
	
	elif re.search('(api\.video\.mail\.ru|videoapi\.my\.mail\.ru)', url):
		data = GET(url)
		#match = re.compile('videoSrc = "(.+?)",').findall(data)
		match = re.compile('"metadataUrl":"(.+?)"').findall(data)
		if len(match) > 0:
			url = match[0]
		else:
			print "Mail.ru parser is failed"
			ShowMessage(addon_name, "Mail.ru video parser is failed")
			return False
		data = GET(url, opts = 'headers')
		video_key_c = data[1].getheader('Set-Cookie')
		video_key_c = re.compile('(video_key=.+?;)').findall(video_key_c)
		if len(video_key_c) > 0:
			video_key_c = video_key_c[0]
		else:
			print "Mail.ru parser is failed"
			ShowMessage(addon_name, "Mail.ru video parser is failed")
			return False
		jsdata = json.loads(data[0])
		vlist = jsdata['videos']
		vlist.sort(key = lambda i: i['key'])
		vdata = vlist[-1]
		url = vdata['url']
		headers = {'Cookie': video_key_c}
		url += '|' + urllib.urlencode(headers)
		return url
	
	elif 'youtube.com' in url:
		try:
			url = get_yt(url)
			print url
		except Exception as ex:
			print ex
		return url
	
	elif 'online-cinema.biz' in url:
		html = GET(url)
		url = re.findall('&file=(.+?)"', html)
		if len(url) > 0: url = url[0]
		else:
			print "Parsing is failed: online-cinema.biz"
			ShowMessage(addon_name, "Parsing is failed: online-cinema.biz")
			return False
		return url
	
	else:
		ShowMessage(addon_name, "Неизвестный видеохостинг: " + url)
		print "Неизвестный видеохостинг: " + url
		return False


def get_yt(url):
	if url.find('youtube.com') > -1:
		if url.find('/videoseries?') > -1:
			print "youtube playlist"
			playlist_id=re.findall('list=(.+?)&',url)[0]
			print playlist_id
			info_url = "http://gdata.youtube.com/feeds/api/playlists/%s" % (playlist_id)
			#info_url = "http://www.youtube.com/view_play_list?p=%s" % (playlist_id)
			print info_url
			try:
				infopage = GET(info_url)
				videoinfo = parse_qs(infopage)
				#print type(videoinfo)
			except Exception as ex:
				print ex
			jso=videoinfo['app']
			links=[]
			for item in jso:
				#print item
				link=re.findall('media\:player url=\'(.+?)$',item)[0]
				#print link
				if link: links.append(get_yt(link))
			if links: video_url='stack://'+' , '.join(links)
			return video_url
		video_priority_map = {'38' : 1,'37' : 2,'22' : 3,'18' : 4,'35' : 5,'34' : 6,}
		video_url = url
		print url
		try:
			if url.find('youtube') > -1:
				found = False
				finder = url.find('=')
				video_id = url[finder + 1:]
				print video_id
				if url.find('/embed/')>-1:
					#print "embed"
					video_id=re.findall('embed/(.+)\??',url)[0]
					#if video_id=="videoseries": video_id=re.findall('list=(.+?)&',url)[0]
					print video_id
				for el in ['&el=embedded',
				'&el=detailpage',
				'&el=vevo',
				'']:
					info_url = 'http://www.youtube.com/get_video_info?&video_id=%s%s&ps=default&eurl=&gl=US&hl=en' % (video_id, el)
					print info_url
					try:
						infopage = GET(info_url)
						videoinfo = parse_qs(infopage)
						print videoinfo
						if ('url_encoded_fmt_stream_map' or 'fmt_url_map') in videoinfo:
							found = True
							if 'use_cipher_signature' in videoinfo and videoinfo['use_cipher_signature'][0]=='True':
								print 'use_cipher_signature: '+ videoinfo['use_cipher_signature'][0]
								ShowMessage('use_cipher_signature:',videoinfo['use_cipher_signature'][0]) #FOR DEBUG
							break
					except Exception as ex:
						print ex

				if found:
					video_fmt_map = {}
					fmt_infomap = {}
					if videoinfo.has_key('url_encoded_fmt_stream_map'):
						tmp_fmtUrlDATA = videoinfo['url_encoded_fmt_stream_map'][0].split(',')
					else:
						tmp_fmtUrlDATA = videoinfo['fmt_url_map'][0].split(',')
					for fmtstring in tmp_fmtUrlDATA:
						fmturl = fmtid = fmtsig = ''
						#print fmtstring.split('&')
						if videoinfo.has_key('url_encoded_fmt_stream_map'):
							try:
								for arg in fmtstring.split('&'):
									print arg #FOR DEBUG
									if arg.find('=') >= 0:
										key, value = arg.split('=')
										if key == 'itag':
											if len(value) > 3:
												value = value[:2]
											fmtid = value
										elif key == 'url':
											fmturl = value
										elif key == 'sig':
											fmtsig = value

								if fmtid != '' and fmturl != '' and video_priority_map.has_key(fmtid):
									video_fmt_map[video_priority_map[fmtid]] = {'fmtid': fmtid,
									'fmturl': urllib.unquote_plus(fmturl)}
									#if fmtsig != '': video_fmt_map[video_priority_map[fmtid]]={'fmtid': fmtid,
									#'fmturl': urllib.unquote_plus(fmturl),'fmtsig': fmtsig}
									if fmtsig != '': video_fmt_map[video_priority_map[fmtid]]['fmtsig']=fmtsig
									fmt_infomap[int(fmtid)] = '%s' % (urllib.unquote_plus(fmturl))
									if fmtsig != '':fmt_infomap[int(fmtid)]+='&signature='+fmtsig
								fmturl = fmtid = fmtsig = ''
							except Exception as ex:
								#print type(ex).__name__
								print ex

						else:
							fmtid, fmturl = fmtstring.split('|')
						if video_priority_map.has_key(fmtid) and fmtid != '':
							video_fmt_map[video_priority_map[fmtid]] = {'fmtid': fmtid,
							'fmturl': urllib.unquote_plus(fmturl)}
							fmt_infomap[int(fmtid)] = urllib.unquote_plus(fmturl)

					if video_fmt_map and len(video_fmt_map):
						best_video = video_fmt_map[sorted(video_fmt_map.iterkeys())[0]]
						print best_video['fmturl']
						video_url = '%s' % (best_video['fmturl'].split(';')[0])
						if 'fmtsig' in best_video: video_url+='&signature='+best_video['fmtsig']
				else:
					print 'Youtube parser failed'
					ShowMessage("Youtube parser failed!",url)
		except Exception as ex:
			print ex

		if video_url != url:
			url = video_url
			#print url

	return url


hos = int(sys.argv[1])
#print sys.argv
params = get_params(sys.argv[2])
#print params

# -- Unified search API handling --
unified = bool(params['unified']) if 'unified' in params else False
if unified:
	params['func'] = 'ListCat'

mode = params["mode"] if 'mode' in params else None
if mode == 'show':
	print urllib.unquote_plus(params["url"])
	params = get_params(urllib.unquote_plus(params["url"]))
	print params
# ---------------------------------

try:
	func = params['func']
	del params['func']
except:
	func = None
	xbmc.log( '[%s]: Primary input' % addon_id, 1 )
	Main(params)
if func != None:
	try: pfunc = globals()[func]
	except:
		pfunc = None
		xbmc.log( '[%s]: Function "%s" not found' % (addon_id, func), 4 )
		ShowMessage('Internal addon error', 'Function "%s" not found' % func, 2000)
	if pfunc: pfunc(params)

