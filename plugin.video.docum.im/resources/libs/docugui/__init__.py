__all__ = ["mainwindow"]

import windows


def main(addon_dir, application):
        #Start main window and enter it's main loop
        mainwin = windows.MainWindow("main-window.xml", addon_dir, "DefaultSkin")
        mainwin.initialize(application)
        mainwin.doModal()
