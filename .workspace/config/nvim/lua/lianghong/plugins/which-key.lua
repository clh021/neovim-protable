return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    require("which-key").setup({})
    local wk = require("which-key")
    wk.register({
      l = {"<cmd>Lazy<cr>", "Lazy"},
      y = {'\'"+y', "Copy to Clipboard"},
      -- s = {'w', "Save"},
    }, { prefix = "<leader>" })
    wk.register({
      e = { name = "+Explorer" },
      f = { name = "+Finder" },
      h = { name = "+Harpoon" },
      n = { name = "+Not height" },
      o = { name = "+Swap" },
      t = { name = "+Tab" },
      w = { name = "+Win&Session" },
      g = {
        name = "+LSP",
        g = {"<cmd>Lspsaga lsp_finder<cr>", "lsp finder"},
        r = {"<cmd>Lspsaga rename<cr>", "Rename"},
        a = {"<cmd>Lspsaga code_action<cr>", "Code action"},
        p = {"<cmd>Lspsaga peek_definition<cr>", "Peek definition"},
        d = {"<cmd>Lspsaga goto_definition<cr>", "Goto definition"},
        o = {"<cmd>Lspsaga outline<cr>", "File Outline"},
        n = {"<cmd>lua vim.diagnostic.goto_next()<cr>", "Goto next diagnostic"}
      }
    }, {prefix="<leader>"})
  end,
}
