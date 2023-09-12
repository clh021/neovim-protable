local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd
local term_mode = vim.api.nvim_create_augroup("TERM_MODE", {clear = true})

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

--打开终端自动进入插入模式
autocmd({"TermOpen"}, { pattern = "*", group = term_mode, command = [[normal i]] })

-- 自动切换中文输入法
-- 只针对 Linux 平台中的 Fcitx5 框架其他平台, 可安装 im-select 插件
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    pattern = { "*" },
    callback = function()
        local input_status = tonumber(vim.fn.system("fcitx5-remote"))
        if input_status == 2 then
            vim.fn.system("fcitx5-remote -c")
        end
    end,
})

-- 警告消息
vim.fn.sign_define('DiagnosticSignError', { text = '✖', texthl = 'DiagnosticSignError', numhl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignHint', { text = '➤', texthl = 'DiagnosticSignHint', numhl = 'DiagnosticSignHint' })
vim.fn.sign_define('DiagnosticSignInfo', { text = 'ℹ', texthl = 'DiagnosticSignInfo', numhl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '⚠', texthl = 'DiagnosticSignWarn', numhl = 'DiagnosticSignWarn' })
