## Install

```sh
curl -L https://github.com/neovim/neovim/releases/download/stable/nvim.appimage /tmp/nvim.appimage
sudo mv /tmp/nvim.appimage /usr/bin/nvim
chmod u+x /usr/bin/nvim
```

## Config

### clone `nvchad`

```sh
git clone https://github.com/NvChad/NvChad.git /.config/nvim
```

### Add config

Copy `./nvim/custom` into `~/.config/nvim/lua/custom`

### Having issues launching?

https://github.com/NvChad/NvChad/issues/2025
