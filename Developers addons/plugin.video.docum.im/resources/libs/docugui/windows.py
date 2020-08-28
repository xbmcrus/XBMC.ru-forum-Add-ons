# -*- coding: utf8 -*-

import xbmcgui, xbmc
import urllib, urllib2, json
import xbmcaddon
import cookielib

__addon_id__ = 'plugin.video.docum.im'

WINDOW_MAIN = 4000
WINDOW_LOGIN = 4001
WINDOW_LOADING = 4002

MENU_BUTTON_CONTAINER = 210
MENU_BUTTON_FILMS = 215
MENU_BUTTON_SERIALS = 216
MENU_BUTTON_SEARCH = 217
MENU_BUTTON_EXIT = 220

PAGE_INDEX = 1200
PAGE_FILMS = 1300
PAGE_SERIALS = 1400
PAGE_SERIAL = 1500
PAGE_LOGIN = 1800

EDIT_USERNAME = 1810
EDIT_PASSWORD = 1811
BUTTON_LOGIN = 1812

CONTENT_FILMS = 1301
CONTENT_SERIALS = 1401
CONTENT_SERIAL_POSTER = 1501
CONTENT_SERIAL_TITLE = 1502
CONTENT_SERIAL_TITLE2 = 1503
CONTENT_SERIAL_SEASONS = 1504
CONTENT_SEARCH = 1601

CONTENT_PAGINATION = 1900
CONTENT_PAGINATION_LIST = 1901


class MainWindow(xbmcgui.WindowXML):
    application = None
    addon_cfg = None

    action = ""
    authenticated = False

    #page
    currentPage = 1

    #current playing video
    currentVideo = 0

    cookieJar = cookielib.CookieJar()
    cookieHeaders = []

    http_errors_counter = 0

    playlist = None

    properties = {}
    search_text = ""

    def setOwnProperty(self, key, value):
        self.setProperty(key, value)
        self.properties[key] = value

    def getOwnProperty(self, key):
        return self.properties[key]

    def initialize(self, application):
        self.application = application

    def onInit(self):
        self.setOwnProperty('Page', '')
        self.setOwnProperty('MainActiveTab', '')
        xbmc.Player().stop()
        self.addon_cfg = xbmcaddon.Addon(__addon_id__)
        username = self.addon_cfg.getSetting('username')
        password = self.addon_cfg.getSetting('password')
        self.authenticated = self.do_login(username, password)
        if not self.authenticated:
            self.getControl(EDIT_USERNAME).setText(username)
            self.getControl(EDIT_PASSWORD).setText(password)
            self.setProperty('Page', 'login')
        else:
            self.setProperty('Page', 'index')


    def onAction(self, action):
        pass

    def onFocus(self, controlID):
        pass

    def onClick(self, control_id):
        if control_id == MENU_BUTTON_FILMS and self.authenticated:
            self.setOwnProperty('MainActiveTab', 'films')
            self.films()
        if control_id == MENU_BUTTON_SERIALS and self.authenticated:
            self.setOwnProperty('MainActiveTab', 'serials')
            self.serials()
        if control_id == MENU_BUTTON_SEARCH and self.authenticated:
            kb = xbmc.Keyboard('', 'Введите название фильма', False)
            kb.doModal()
            if kb.isConfirmed():
                self.setOwnProperty('MainActiveTab', 'search')
                self.search_text = kb.getText()
                self.search(self.search_text)
        if control_id == MENU_BUTTON_EXIT:
            self.close()

        if control_id == CONTENT_PAGINATION_LIST:
            page = self.getControl(control_id).getSelectedPosition() + 1
            if page != self.currentPage:
                self.currentPage = page
                if self.getOwnProperty('Page') == 'films':
                    self.films()
                if self.getOwnProperty('Page') == 'serials':
                    self.serials()
                if self.getOwnProperty('Page') == 'search':
                    self.search(self.search_text)

        if control_id == BUTTON_LOGIN:
            username = self.getControl(EDIT_USERNAME).getText()
            password = self.getControl(EDIT_PASSWORD).getText()
            result = self.do_login(username, password)
            if result:
                self.addon_cfg.setSetting('username', username)
                self.addon_cfg.setSetting('password', password)
                self.setOwnProperty('Page', 'index')

        if control_id == CONTENT_FILMS and self.authenticated:
            self.show_film(control_id)

        if control_id == CONTENT_SERIAL_SEASONS and self.authenticated:
            control = self.getControl(control_id).getSelectedItem()
            xbmc.executebuiltin('XBMC.Playlist.PlayOffset(video, +%s)' % control.getProperty('position'))
            xbmc.Player(xbmc.PLAYER_CORE_AUTO).playselected()

        if control_id == CONTENT_SERIALS and self.authenticated:
            self.show_serial(control_id)

        if control_id == CONTENT_SEARCH and self.authenticated:
            control = self.getControl(control_id).getSelectedItem()
            if control.getProperty('movie_type') == '0':
                self.show_film()
            else:
                self.show_serial(control_id)

    def get_response(self, query):
        opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(self.cookieJar))
        req = urllib2.Request("http://docu.im/xbmc/%s" % query)
        req.add_header('Host', 'docu.im')
        req.add_header('User-Agent', 'DOCU_XBMC1')
        response = opener.open(req)
        data = ""
        try:
            data = response.read()
        except:
            if (self.http_errors_counter < 10):
                data = self.get_response(query)
                self.http_errors_counter += 1
            else:
                print "ERROR. show notice about network connectivity"
        return data

    def get_movies(self, list_container, url):
        list_container.reset()
        data = json.loads(self.get_response(url))

        for item in data["items"]:
            poster = item["posters"].get("medium", "/media/posters/noposter.jpg")
            liz = xbmcgui.ListItem(item["title_ru"].encode("utf8"), item["title_en"], thumbnailImage=poster, iconImage=poster)
            liz.setInfo(type="Video", infoLabels={"Title": item["title_ru"].encode("utf8")})
            liz.setProperty('id', item['id'])
            liz.setProperty('url', 'http://docu.im/xbmc/play/%s' % item["id"])
            liz.setProperty('poster', poster)
            liz.setProperty('title', item["title_ru"].encode("utf8"))
            liz.setProperty('title2', item["title_en"])
            liz.setProperty('movie_type', item.get('type', '0'))
            list_container.addItem(liz)

        pagination = data["pagination"]
        paginationControl = self.getControl(1901)
        paginationControl.reset()
        for page in range(1, int(pagination["total"])):
            pageButton = xbmcgui.ListItem(str(page))
            pageButton.setInfo(type="Folder", infoLabels={"Title": str(page)})
            paginationControl.addItem(pageButton)
            if int(page) == int(pagination['current']):
                self.currentPage = page
                paginationControl.selectItem(page)

    def films(self):
        self.setOwnProperty('Page', 'films')
        flist = self.getControl(CONTENT_FILMS)
        self.get_movies(flist, "%s/page/%s" % ('films', self.currentPage))

    def serials(self):
        self.setOwnProperty('Page', 'serials')
        slist = self.getControl(CONTENT_SERIALS)
        self.get_movies(slist, "%s/page/%s" % ('serials', self.currentPage))

    def search(self, text):
        self.setOwnProperty('Page', 'search')
        flist = self.getControl(CONTENT_SEARCH)
        self.get_movies(flist, "%s/text/%s/page/%s" % ('search', text, self.currentPage))

    def show_film(self, control_id):
        control = self.getControl(control_id).getSelectedItem()
        player = xbmc.Player(xbmc.PLAYER_CORE_AUTO)
        headers = {
            'User-Agent': 'DOCU_XBMC1',
            #'Cookie': self.cookieHeaders[1],
        }
        url = "%s|%s" % (control.getProperty('url'), urllib.urlencode(headers))
        player.play(url, control, False)

    def show_serial(self, control_id):
        control = self.getControl(control_id).getSelectedItem()
        self.setOwnProperty('Page', 'view_serial')
        self.setOwnProperty('MainActiveTab', '')
        poster = control.getProperty('poster')
        self.getControl(CONTENT_SERIAL_POSTER).setImage(poster)
        self.getControl(CONTENT_SERIAL_TITLE).setLabel(control.getProperty('title'))
        self.getControl(CONTENT_SERIAL_TITLE2).setLabel(control.getProperty('title2'))

        data = json.loads(self.get_response("serial/%s" % control.getProperty('id')))
        container = self.getControl(CONTENT_SERIAL_SEASONS)
        container.reset()
        i = j = 1
        z = 0
        self.playlist = xbmc.PlayList(xbmc.PLAYLIST_VIDEO)
        self.playlist.clear()
        for s in data['data']['seasons']:
            season_title = u"Сезон %s" % i
            season_title = season_title.encode("utf8")
            liz = xbmcgui.ListItem("", season_title, "")
            liz.setInfo(type="Folder", infoLabels={"Title": season_title})
            container.addItem(liz)
            for v in s["videos"]:
                liz = xbmcgui.ListItem(v["title"], thumbnailImage=poster, iconImage=poster)
                liz.setInfo(type="Video", infoLabels={"Title": v["title"], "Season": i, "Episode": j})
                liz.setProperty('position', str(z))
                container.addItem(liz)
                self.playlist.add(url='http://docu.im/xbmc/play/%s|%s' % (v["id"], "User-Agent=DOCU_XBMC1"), listitem=liz)
                j += 1
                z += 1
            i += 1
            j = 1

    def do_login(self, username, password):
        opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(self.cookieJar))
        login_data = urllib.urlencode([('username', username), ('password', password)])

        req = urllib2.Request('http://docu.im/xbmc/signin', login_data)
        req.add_header('Host', 'docu.im')
        req.add_header('User-Agent', 'DOCU_XBMC1')
        try:
            response = opener.open(req)
            try:
                self.cookieHeaders = response.headers.getheaders("Set-Cookie")
            except:
                self.cookieHeaders = ""

            js = json.loads(response.read())
            if js["status"] == "success" or js["status"] == "already":
                self.authenticated = True
                return True
            else:
                self.authenticated = False
                return False
        except:
            return False
