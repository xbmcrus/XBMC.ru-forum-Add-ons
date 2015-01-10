#-*- coding: utf-8 -*-
'''
    Torrenter plugin for XBMC
    Copyright (C) 2012 Vadim Skorba
    vadim.skorba@gmail.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
'''

import SearcherABC
import Localization
import urllib
import re
import sys, tempfile, os.path

class Kino_ZalTv(SearcherABC.SearcherABC):
    
    '''
    Weight of source with this searcher provided.
    Will be multiplied on default weight.
    Default weight is seeds number
    '''
    sourceWeight = 1

    '''
    Relative (from root directory of plugin) path to image
    will shown as source image at result listing
    '''
    searchIcon = '/resources/searchers/icons/kino-zal.tv.png'

    '''
    Flag indicates is this source - magnet links source or not.
    Used for filtration of sources in case of old library (setting selected).
    Old libraries won't to convert magnet as torrent file to the storage
    '''
    @property
    def isMagnetLinkSource(self):
        return False

    '''
    Main method should be implemented for search process.
    Receives keyword and have to return dictionary of proper tuples:
    filesList.append((
        int(weight),# Calculated global weight of sources
        int(seeds),# Seeds count
        str(title),# Title will be shown
        str(link),# Link to the torrent/magnet
        str(image),# Path/URL to image shown at the list
    ))
    '''
    def search(self, keyword):
        filesList = []
        data = {
            'action': 'search',
            'word': keyword,
            }
        response = self.makeRequest('http://kino-zal.tv/search',data)
        if None != response and 0 < len(response) and re.search("seed\.gif", response):
            for (link, title, title2, title3, seeds) in re.compile("<a href=\"(.+?)\".+?><b.+?>(.+?)</b>.+?<td class=\"centro td90 sizer\".+?>(.+?)</td>.+?<td nowrap class=\"centro sizer td95\">(.+?)</td>.+?<span class=\"seedor\".+?>(.+?)</span>", re.DOTALL|re.MULTILINE).findall(response):
                title=('%s %s %s' %(title, title2, title3)).replace('<br>','')
                #if len(title)>100:
                #    title=title[:100]+'<br>'+title[100:]
                torrentTitle = "%s [%s: %s]" % (title, Localization.localize('Seeds'), seeds)
                image = sys.modules[ "__main__"].__root__ + self.searchIcon
                filesList.append((
                    int(int(self.sourceWeight) * int(seeds)),
                    int(seeds),
                    self.unescape(self.stripHtml(torrentTitle)),
                    self.__class__.__name__ + '::' + link,
                    image,
                ))
        return filesList

    def getTorrentFile(self, url):
        referer = url
        #print url
        html=self.makeRequest(url)
        #print html
        dl_id=re.search("<a href=\"http://kino-zal.tv/download.php\?id=(\d+)\">", html, re.DOTALL).group(1)
        url='http://kino-zal.tv/download.php?id='+str(dl_id)
        localFileName = tempfile.gettempdir() + os.path.sep + self.md5(url)
        content = self.makeRequest(
            url,
            headers=[('Referer', referer)]
        )
        localFile = open(localFileName, 'wb+')
        localFile.write(content)
        localFile.close()
        return 'file:///' + localFileName
