---@type ChadrcConfig 
 local M = {}
 M.ui = {
  theme = 'catppuccin',
  nvdash = {
    load_on_startup = true,
    header = {
            "888888888888                             88",
            "     88                                  ''",
            "     88                                    ",
            "     88  ,adPPYba,  ,adPPYba,  ,adPPYba, 88",
            "     88 a8'     '8a I8[    '' a8P_____88 88",
            "     88 8b       d8  'Y8ba',  '8PP'''''' 88",
            "     88 '8a',   ,'a8' aa  ]8I i8b,    aa 88",
            "     88  ''YbbdP''  ''YbbdP''  ''Ybbd8'' 88",
              },
  },
 }
 M.plugins = 'custom.plugins'
 M.mappings = require 'custom.mappings'
 return M
