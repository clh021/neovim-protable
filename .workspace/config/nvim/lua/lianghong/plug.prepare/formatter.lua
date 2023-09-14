return {
  {
    "mhartington/formatter.nvim",
    event = { "VeryLazy" },
    opts = function()
      vim.api.nvim_create_autocmd("BufWritePost", {
        group = Utils.augroup("format"),
        pattern = { "*" },
        command = "FormatWrite",
      })

      local js_ts_filetype = {
        require("formatter.defaults").eslint_d,
        require("formatter.defaults").prettierd,
      }

      return {
        filetype = {
          lua = { require("formatter.filetypes.lua").stylua },
          css = { require("formatter.defaults").prettierd },
          html = { require("formatter.defaults").prettierd },
          json = { require("formatter.defaults").prettierd },
          yaml = { require("formatter.defaults").prettierd },
          javascript = js_ts_filetype,
          javascriptreact = js_ts_filetype,
          typescript = js_ts_filetype,
          typescriptreact = js_ts_filetype,
        },
      }
    end,
  },
}
