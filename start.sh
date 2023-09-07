#!/usr/bin/env bash

# export all_proxy=socks5://192.168.1.128:1090

ROOT_WORKSPACE="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
archStr=$(uname -m)
NVIM_BINARY="$ROOT_WORKSPACE/bin/nvim.$archStr.appimage"
NVIM_WORKSPACE="$ROOT_WORKSPACE/workspace"

# 创建工作目录
mkdir -p "$NVIM_WORKSPACE"

# 设置环境变量，指定 Neovim 的运行时目录和配置目录
_XDG_CONFIG_HOME="$NVIM_WORKSPACE/config"

if [ ! -d "$_XDG_CONFIG_HOME/nvim" ]; then
  git clone --depth=1 https://github.com/NvChad/NvChad "$_XDG_CONFIG_HOME/nvim"
fi
if [ ! -d "$_XDG_CONFIG_HOME/nvim/lua/custom" ]; then
  git clone --depth=1 git@github.com:clh021/NvChad-lua-custom.git "$_XDG_CONFIG_HOME/nvim/lua/custom"
fi

# 运行 Neovim
XDG_CONFIG_HOME="$_XDG_CONFIG_HOME" \
XDG_DATA_HOME="$NVIM_WORKSPACE/data" \
XDG_CACHE_HOME="$NVIM_WORKSPACE/cache" \
"$NVIM_BINARY"
