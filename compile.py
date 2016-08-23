# -*- coding: utf-8 -*-

import os, md5
import hashlib
import zipfile

__author__ = 'bigbax'

XML = u"""
<addon id="repository.ru" name="XBMC.ru forum Add-ons" version="1.0.1" provider-name="bigbax">
    <extension point="xbmc.addon.repository" name="XBMC.ru forum Add-ons">
        <info compressed="true">https://github.com/xbmcrus/XBMC.ru-forum-Add-ons/raw/master/addons.xml</info>
		<checksum>https://github.com/xbmcrus/XBMC.ru-forum-Add-ons/raw/master/addons.xml.md5</checksum>
		<datadir zip="true">https://github.com/xbmcrus/XBMC.ru-forum-Add-ons/raw/master/</datadir>
    </extension>
    <extension point="xbmc.addon.metadata">
		<summary>Install Add-ons from RUS Add-on Repository</summary>
		<summary lang="ru">Установить дополнения и репозитории пользователей форума XBMC.ru</summary>
		<description>Russian plug-ins and repository installer for XBMC</description>
		<description lang="ru">Загружайте и устанавливайте плагины и репозитории разработчиков форума XBMC.ru.[CR]Если вы обнаружили нерабочее дополнение, сообщите об этом разработчикам плагина в разделе форума "Помощь по плагинам".</description>
		<disclaimer lang="en">Team XBMC did not make all the add-ons on this repository and are not responsible for their content</disclaimer>
		<disclaimer lang="ru">Разработчики XBMC не являются авторами этих дополнений и не несут ответственность за их содержимое.</disclaimer>
		<platform>all</platform>
	</extension>
</addon>
"""

def get_addons():
    addons = []
    for dirname in os.listdir('./master'):
        if os.path.isdir('./master/' + dirname):
            filelist = os.listdir('./master/' + dirname)
            if filelist:
                filelist.sort()
                filename = './master/' + dirname + '/' + filelist.pop()
                z = zipfile.ZipFile(filename, 'r')
                addons.append( '\n'.join([x for x in z.read(dirname + '/addon.xml').splitlines() if x.find('<?xml') == -1]) )
                z.close()
                # for Kodi-17
                file(filename + '.md5', 'wb').write(hashlib.md5(file(filename, 'rb').read()).hexdigest())
    return addons


if __name__ == '__main__':
    addons = ['<?xml version="1.0" encoding="UTF-8"?>', '<addons>']
    addons.extend( get_addons() )
    addons.append(XML.encode('utf8'))
    addons.append('</addons>')
    
    file('./addons.xml', 'w').write('\n'.join(addons))
    file('./addons.xml.md5', 'w').write( hashlib.md5(file('./addons.xml', 'rb').read()).hexdigest() )

    file('./addon.xml', 'w').write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' + XML.encode('utf8'))
    z = zipfile.ZipFile('./repository.ru.zip', 'w')
    z.write('./icon.png', 'repository.ru/icon.png')
    z.write('./addon.xml', 'repository.ru/addon.xml')
    z.close()
    os.unlink('./addon.xml')