#!/usr/bin/env bash

# TODO: NVIM_APPNAME 运用这个特性
# https://github.com/rockerBOO/awesome-neovim
# https://github.com/xiantang/nvim-conf
export all_proxy=socks5://127.0.0.1:20170

# sudo apt install python3 python3-pip
# pip3 install pynvim
# npm install -g neovim
# sudo apt install lazygit ctags ranger
# :checkhealth ，然后按下回车执行来检查依赖是否齐全

ROOT_WORKSPACE="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
archStr=$(uname -m)
NVIM_BINARY="$ROOT_WORKSPACE/bin/nvim.$archStr.appimage"
NVIM_WORKSPACE="$ROOT_WORKSPACE/.workspace"
_XDG_CONFIG_HOME="$NVIM_WORKSPACE/config"

display_usage() {
    echo -e "Just use it like vim bin."
    exit 1
}

CMD=""
if [[ ( $@ == "--help" ) || $@ == "-h" ]]; then
    display_usage
elif [[ -n $@ ]]; then
    CMD=$@
fi

# 运行 Neovim
XDG_CONFIG_HOME="$_XDG_CONFIG_HOME" \
XDG_DATA_HOME="$NVIM_WORKSPACE/data" \
XDG_CACHE_HOME="$NVIM_WORKSPACE/cache" \
"$NVIM_BINARY"  ${CMD}
