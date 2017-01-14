#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Name:        plugin.video.filmix
# Licence:     GPL v.3: http://www.gnu.org/copyleft/gpl.html

import urllib, re, base64, json, urlparse, sys
import xbmc, xbmcplugin, xbmcaddon, xbmcgui

addon        = xbmcaddon.Addon()
addon_url    = sys.argv[0]
addon_handle = int(sys.argv[1])
addon_args   = urlparse.parse_qs(sys.argv[2][1:])
addon_path   = addon.getAddonInfo('path').decode('utf-8')
site         = 'http://filmix.net'

def get_page(url):
  return unicode(urllib.urlopen(url).read(),'cp1251')

def decode_uppod(secret):
  hash1 = "luTDQH03G1fMpUaI6kdsbW5ey="
  hash2 = "wgiZcRzvxnN28JXt9V74BmYoLh"
  for i in range(0, len(hash1)):
    secret = secret.replace(hash1[i], '#'     )
    secret = secret.replace(hash2[i], hash1[i])
    secret = secret.replace(     '#', hash2[i])
  return base64.b64decode(secret)

def menu(category=''):
  r_menu            = r'<nav class="header-menu">(.+?)</nav>'
  r_menu            = re.compile(r_menu, re.S)
  r_menu_categories = r'"menu-title">(.+?)</span>(.+?)class="lucky"'
  r_menu_categories = re.compile(r_menu_categories, re.S)
  r_menu_items      = r'<li><a href="(.+?)".*>(.+?)</a></li>'
  r_menu_items      = re.compile(r_menu_items, re.M)

  page = get_page('http://filmix.net')
  categories =  r_menu_categories.findall(r_menu.findall(page)[0])

  list = []

  non_list = []
  non_list.append(unicode('По алфавиту','utf-8'))
  non_list.append(unicode('Популярные','utf-8'))
  non_list.append(unicode('Плейлисты','utf-8'))
  non_list.append(unicode('Трейлеры','utf-8'))

  if category == '':
    list.append(['search', '[ Поиск ]'])
    for item in categories:
      list.append(item[0])
  else:
    for item in categories:
      if item[0] == unicode(category,'utf-8'):
        items = r_menu_items.findall(item[1])
        for item in items:
          if (item[1]) not in non_list:
            list.append([item[0],item[1]])
  for i in list:
    if isinstance(i,unicode):
      name = param = i
      page_next = 'menu'
    elif len(i) == 2:
      param, name = i
      page_next = 'page'
    else: break
    item = xbmcgui.ListItem(name)
    url = '%s?type=%s&param=%s' % (addon_url, page_next, param)
    xbmcplugin.addDirectoryItem(addon_handle, url, item, isFolder=True)
  xbmcplugin.endOfDirectory(addon_handle)
def page(url):
  if url == 'search':
    skbd = xbmc.Keyboard()
    skbd.setHeading('Название фильма или часть названия')
    skbd.doModal()
    search = skbd.getText(0)
    url = 'http://filmix.net/search/' + search
  page = get_page(url)
  
  next_page = r'<div class="navigation">.*href="(.+?)"\sclass="'
  next_page = re.compile(next_page,re.S)
  next_page_list = next_page.findall(page)
  
  items_in_page = int(addon.getSetting('items'))/15 - 1
  for i in range(items_in_page):
    next_page_list = next_page.findall(page)
    if next_page_list:
      page = page + get_page(next_page_list[-1])
    else: break
  next_page = next_page.findall(page)

  video_list = re.compile('<article class.+?>(.+?)</article',re.DOTALL)
  video_list = video_list.findall(page)
    
  find_1 = {}
  find_1['img']     = 'src="(.+?)"'
  find_1['id']      = 'class="like" data-id="(.+?)">'
  find_1['quality'] = 'class="quality">(.+?)</div>'
  find_1['url']     = 'href="(.+?filmix.net/play.+?)" class="watch"'
  find_2 = {}
  find_2['title']         = '"name" content="(.*?)"'
  find_2['originaltitle'] = '"alternativeHeadline" content="(.*?)"'
  find_2['year']          = '"copyrightYear" href=".+?">(.+?)</a'
  find_2['plot']   = '"description">(.+?)</p'
  find_2['plotoutline']   = '"description">(.+?)</p'

  for i in find_1: find_1[i] = re.compile(find_1[i])
  for i in find_2: find_2[i] = re.compile(find_2[i])

  for i in video_list:
    dict = {}
    line_info = {}
    for f in find_1:
      find = find_1[f].findall(i)
      if len(find)>0: dict.setdefault(f,find[0])
    for f in find_2:
      find = find_2[f].findall(i)
      if len(find)>0:
        dict.setdefault(f,find[0])
        line_info.setdefault(f,find[0])
    url = addon_url + '?type=video&param=%s' % dict['id']
    line = xbmcgui.ListItem(dict['title'],iconImage=site + dict['img'])
    line.setInfo(type = 'Video', infoLabels = line_info)
    xbmcplugin.addDirectoryItem(addon_handle, url, line, isFolder=True)


  if next_page:
    text = '[Следующая страница]'
    url  = addon_url + '?type=page' + '&param=%s' % next_page[-1]
    line = xbmcgui.ListItem(text)
    xbmcplugin.addDirectoryItem(addon_handle, url, line, isFolder=True)
  xbmcplugin.endOfDirectory(addon_handle)

def video_quality(url):
  match = re.match('^(.*)\[(.*)\](.*)$', url)
  qual = addon.getSetting('quality')
  if match:
    quality = match.group(2).split(',')
    normal_quality = []
    for nmn in quality:
      if (nmn != ''): normal_quality.append(int(nmn))
    normal_quality.sort()
    if   qual == 'High':   q = normal_quality.pop()
    elif qual == 'Low':    q = normal_quality[0]
    elif qual == 'Normal':
      q = normal_quality[0]
      for i in normal_quality:
        if (i <= 480):
          q = i
    return match.group(1) + str(q) + match.group(3)
  else:
    return url

def video(id):
  url    = video_url = site + '/play/' + id
  page   = get_page(url)
  img_r  = '.*itemprop="thumbnailUrl" content="(.+?)"'
  img    = re.search(img_r,page,re.MULTILINE).group(1)
  name_r = '".*itemprop="title">(.+?)</span'
  name_s = re.findall(name_r,page,re.MULTILINE)
  name   = name_s.pop().encode('utf-8')

  t_videoLink = r'^.*videoLink = \'(.*)\';.*$'
  t_plLink    = r'^.*plLink = \'(.*)\';.*$'
  p_videoLink = re.search(t_videoLink,page,re.MULTILINE).group(1)
  p_plLink    = re.search(t_plLink,page,re.MULTILINE).group(1)

  plst = []
  if (p_videoLink != '{video-link}'):
    plst.append({
          'comment' : name,
          'file'    : decode_uppod(p_videoLink),
          'serieId' : '',
          'season'  : ''})

  if (p_plLink != '{pl-link}'):
    plst = []
    playlist_tmp = urllib.urlopen(decode_uppod(p_plLink)).read()
    playlist = json.loads(decode_uppod(playlist_tmp))
    for pl in playlist['playlist']:
      for pll in pl['playlist']:
        plst.append({
          'comment' : pll['comment'],
          'file'    : pll['file'],
          'serieId' : pll['serieId'],
          'season'  : pll['season']})
  for item in plst:
    file = video_quality(item['file'])
    line_info = {'episode': item['serieId'],
                 'season' : item['season'], 
                 'title'  : name }
    if item['season'] and item['serieId'] != '':
      x_name = '%s | (s%02ie%02i)' % (name,
                                      int(item['season']),
                                      int(item['serieId']))
    else: x_name = '%s' % name
    list_item = xbmcgui.ListItem(x_name, iconImage=img)
    list_item.setInfo(type = 'Video', infoLabels = line_info)
    xbmcplugin.addDirectoryItem(addon_handle, file, list_item)
  xbmcplugin.endOfDirectory(addon_handle)

def main():
  if 'type' and 'param' in addon_args.keys():
    if addon_args['type'][0] == 'menu' : menu(addon_args['param'][0])
    if addon_args['type'][0] == 'page' : page(addon_args['param'][0])
    if addon_args['type'][0] == 'video': video(addon_args['param'][0])
  else:
    menu()

if __name__ == '__main__':
  main()
