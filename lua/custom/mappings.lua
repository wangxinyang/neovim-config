local M = {}

M.disabled = {
  n = {
    --["s"] = "",
  }
}

M.cus = {
  n = {
    --windows 分屏快捷键
    ["zv"] = {":vsp<CR>", "vertical split"},
    ["zh"] = {":sp<CR>", "horizontal split"},
    -- 关闭当前
    ["zc"] = {"<C-w>c", "close current"},
    -- 关闭其他
    ["zo"] = {"<C-w>o", "close other"},
    -- leader + hjkl  窗口之间跳转
    ["<leader>h"] = {"<C-w>h", "left"},
    ["<leader>j"] = {"<C-w>j", "down"},
    ["<leader>k"] = {"<C-w>k", "up"},
    ["<leader>l"] = {"<C-w>l", "right"},
    -- 左右比例控制
    ["<C-Left>"] = {":vertical resize -2<CR>", "more left"},
    ["<C-Right>"] = {":vertical resize +2<CR>", "more right"},
    ["z,"] = {":vertical resize -20<CR>", "more more left"},
    ["z."] = {":vertical resize +20<CR>", "more more right"},
    -- 上下比例
    ["zj"] = {":resize +10<CR>", "down plus 10"},
    ["zk"] = {":resize -10<CR>", "up mlus 10"},
    ["<C-Down>"] = {":resize +2<CR>", "down plus 2"},
    ["<C-Up>"] = {":resize -2<CR>", "up plus mlus 2"},
    -- 等比例
    ["z="] = {"<C-w>=", "equal"},
    -- 上下滚动浏览
    ["<C-j>"] = {"4j", "scroll down"},
    ["<C-k>"] = {"4k", "scroll up"},
    -- ctrl u / ctrl + d  只移动9行，默认移动半屏
    ["<C-u>"] = {"9k", "scroll up"},
    ["<C-d>"] = {"9j", "scroll down"},
    -- Terminal相关
    ["<leader>t"] = {":sp | terminal<CR>", "open  terminal"},
    ["<leader>vt"] = {":vsp | terminal<CR>", "open  terminal"},
    -- 退出
    ["q"] = {":q<CR>", "quit"},
    ["qq"] = {":qa!<CR>", "quit"},
  },

  i = {
    -- insert 模式下，跳到行首行尾
    ["<C-h>"] = {"<ESC>I", "move to line start"},
    ["<C-l>"] = {"<ESC>A", "move to line end"},
  },

  t = {
    ["<Esc>"] = {"<C-\\><C-n>", "exit terminal mode"},
    ["<A-h>"] = {[[ <C-\><C-N><C-w>h ]], ""},
    ["<A-j>"] = {[[ <C-\><C-N><C-w>j ]], ""},
    ["<A-k>"] = {[[ <C-\><C-N><C-w>k ]], ""},
    ["<A-l>"] = {[[ <C-\><C-N><C-w>l ]], ""},
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

M.copilot = {
  plugin = true,
  i = {
    ["<leader>l"] = {
      function ()
        require("copilot.suggestion").accept_line()
      end,
      "accept copilot"
    }
  }
}


return M
