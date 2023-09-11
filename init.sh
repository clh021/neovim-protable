#!/usr/bin/env bash
set -e
ROOT_WORKSPACE="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
archStr=$(uname -m)
mirror_site=https://github.com
# mirror_site=https://download.fastgit.org.com
# mirror_site=https://github.wuyanzheshui.workers.dev
# mirror_site=https://github.rc1844.workers.dev
# mirror_site=https://github.com.cnpmjs.org
aarch64_url="$mirror_site/matsuu/neovim-aarch64-appimage/releases/download/v0.9.0/nvim-v0.9.0.appimage"
x86_64_url="$mirror_site/neovim/neovim/releases/download/v0.9.1/nvim.appimage"
download_url=""
if [ "$archStr" == "aarch64" ]; then
   download_url=$aarch64_url
elif [ "$archStr" == "x86_64" ]; then
   download_url=$x86_64_url
else
   echo "Can't support this arch now."
fi

mkdir -p "$ROOT_WORKSPACE/bin/"
echo wget -c "$download_url" -o "$ROOT_WORKSPACE/bin/_nvim.$archStr.appimage"
wget -c "$download_url" -o "$ROOT_WORKSPACE/bin/_nvim.$archStr.appimage"
