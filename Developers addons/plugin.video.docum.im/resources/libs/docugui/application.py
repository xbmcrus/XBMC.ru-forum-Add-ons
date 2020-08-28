class Application():
    addon_cfg = None
    params = {}

    def __init__(self, addon_cfg):
        self.addon_cfg = addon_cfg

    def setParam(self, key, value):
        self.params[key] = value

    def getParam(self, key):
        return self.params[key]
