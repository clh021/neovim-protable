# Neovim Protable

## Download
- aarch64: https://github.com/matsuu/neovim-aarch64-appimage/releases
- amd64: https://github.com/neovim/neovim/releases

## 设置终端Terminal字体

JetbrainsMono Nerd Font 而不是JetbrainsMono Nerd Font Mono

字体下载: https://github.com/ryanoasis/nerd-fonts/releases

## 其它依赖

### 系统剪贴板
```bash
sudo apt install xclip
```

## 使用
```bash
./s.sh
```
设置别名
```bash
# nvim-protable
if [ -f "$HOME/Projects/neovim-protable/s.sh" ]; then
    alias nvim="$HOME/Projects/neovim-protable/s.sh"
else
    alias nvim="just command: git clone --depth=1 https://github.com/clh021/neovim-protable.git"
fi
# use nvim just like bin nvim
```
