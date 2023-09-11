local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

 -- PackerCompile
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use 仓库名
  use 'folke/tokyonight.nvim' -- 主题
  use {
    'nvim-lualine/lualine.nvim',
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  -- use {
  --   'nvim-tree/nvim-tree.lua',
  --   requires = { 'nvim-tree/nvim-web-devicons' }
  -- }
  use { "christoomey/vim-tmux-navigator" } -- 用 ctrl-h/j/k/l 定位窗口 -- tmux 配置后也可以一起用
  use { "nvim-treesitter/nvim-treesitter" } -- 语法高亮
  use { "p00f/nvim-ts-rainbow" } -- 不同颜色的括号匹配
  if packer_bootstrap then
    require('packer').sync()
  end
end)
