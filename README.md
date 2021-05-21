# Minimal neovim setup with native language server and treesitter.

**Requires neovim nightly!**

- clone this repo into nvim config location:

  ```bash 
  mkdir -p ~/.config/nvim
  git clone https://github.com/nikvdp/nvim-lsp-config/ ~/.config/nvim
  ```
- install vim-plug:

  ```bash 
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  ```

- Install a [nerdfont](https://github.com/ryanoasis/nerd-fonts) and configure your terminal to use it(otherwise icons will not display correctly)

  On a mac you can install via, eg: 
  ```
  brew tap homebrew/cask-fonts
  brew install --cask font-victor-mono-nerd-font
  ```
  and then select "VictorMono Nerd Font" in your terminal emulator's font config.

  For iTerm2, this means hit `⌘+,` to open up preferences, then go to Profiles
  -> Text -> Font and use the dropdown to select "VictorMono Nerd Font"

- Install plugins: `nvim '+PlugInstall | qa'`
- Start neovim: `nvim`
- Install LSPs for languages you care about via eg `:LspInstall python`. You can use tab completion after typing `:LspInstall ` to see which language servers are available

- Add your preferred keybindings to `init.vim`.
