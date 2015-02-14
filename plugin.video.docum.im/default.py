import xbmcaddon
import xbmc
import os
import sys

SITE = "http://docu.im"
__addon_id__ = 'plugin.video.docum.im'

addon_cfg = xbmcaddon.Addon(__addon_id__)
__addon_path__ = addon_cfg.getAddonInfo('path')
__addon_version__ = addon_cfg.getAddonInfo('version')

addon_data_dir = os.path.join(
    xbmc.translatePath('special://profile/addon_data'),
    __addon_id__
)

#Auto-create profile dir if it does not exist
if not os.path.exists(addon_data_dir):
    os.makedirs(addon_data_dir)

#Add the libraries
libs_dir = os.path.join(__addon_path__, "resources/libs")
sys.path.insert(0, libs_dir)
#Add the skinutils module
sys.path.insert(0, os.path.join(libs_dir, "XbmcSkinUtils.egg"))

from skinutils import reload_skin
from skinutils.includes import IncludeManager
#Install custom includes
im = IncludeManager()
include_path = os.path.join(__addon_path__, "resources/skins/DefaultSkin/720p/includes.xml")
im.install_file(include_path)
reload_skin()

#Load & start the actual gui, no init code beyond this point
from docugui.application import Application
from docugui import main

app = Application(addon_cfg)
app.setParam('host', 'docu.im')

main(__addon_path__, app)
