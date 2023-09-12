local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

-- 行号
opt.relativenumber = true
opt.number = true
opt.scrolloff = 8

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- 主题
vim.cmd[[colorscheme tokyonight-moon]]


-- 只在编辑模式(非输入时)使用相对行号
autocmd({ "InsertEnter" }, { pattern = { "*" }, command = "set nornu" })
autocmd({ "InsertLeave" }, { pattern = { "*" }, command = "set rnu" })
