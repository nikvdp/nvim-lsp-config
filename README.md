# Neovim with LSP and tree-sitter

An opinionated and simple neovim configuration with native LSP and treesitter
support. 

You can use this repo either as a base config to build your own neovim
configuration on top of, or as an example of how to configure neovim with
treesitter and LSP support.

## Why would you want this? 

In short, because LSP and treesitter together give neovim superpowers.
Treesitter provides highlighting and syntax checking for almost any
programming language by parsing and creating an AST of the file. This
beats the pants off of previous approaches which used error-prone regexes
that didn't necessarily understand the *contents* of your code.

Neovim's new native LSP client means Neovim can now do things like
intellisense/auto-completion, automated code refactoring, navigating to
definitions (even across import statements or multiple files) and even
automated code formatting.

In short, nearly everything that you would get with a full-on IDE like
PyCharm or VS Code, but with all the speed, power and customizability of
vim at your disposal.

This repo also includes
[Telescope](https://github.com/nvim-telescope/telescope.nvim) which gives
neovim fuzzy-finding capabilities on par with
[fzf](https://github.com/junegunn/fzf) and even lets you do
[ripgrep](https://github.com/BurntSushi/ripgrep) like searches across all
the files in your project (or just the ones committed in git!).

For a demo of the final setup's capabilities check the video:

<p align="center">
    <a target="_blank" href="https://youtu.be/7KVgMAd16NQ">
        <img width="75%" src="https://github.com/nikvdp/nvim-lsp-config/blob/master/.github/screenshot.jpg">
    </a>
</p>

# Installation

This repo uses recently neovim-specific features, and as a result **this repo requires
[neovim 0.5.0+/nightly](https://github.com/neovim/neovim/releases/tag/nightly). This configuration will not work with vanilla vim or
neovim 0.4**

To install, first make sure you have installed [neovim nightly](https://github.com/neovim/neovim/releases/tag/nightly).

If you already have an existing neovim configuration, then it's best to
cherrypick the pieces of this configuration into your own files as you see fit.

If you're configuring neovim for the first time, then do the following:

1. clone this repo into nvim config location:

   ```bash 
   mkdir -p ~/.config/nvim
   git clone https://github.com/nikvdp/nvim-lsp-config/ ~/.config/nvim
   ```
2. install vim-plug:

   ```bash 
   sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
   ```

3. Install a [nerdfont](https://github.com/ryanoasis/nerd-fonts) and configure your terminal to use it (otherwise icons will not display correctly)

   On a mac you can install one via, eg: 
   ```
   brew tap homebrew/cask-fonts
   brew install --cask font-victor-mono-nerd-font
   ```
   and then select "VictorMono Nerd Font" in your terminal emulator's font config.

   For iTerm2, this means hit `⌘+,` to open up preferences, then go to Profiles
   -> Text -> Font and use the dropdown to select "VictorMono Nerd Font"

   Linux or Windows pelase follow the instructions provided at the [nerd fonts repository](https://github.com/ryanoasis/nerd-fonts).

4. Install plugins: 

   ```shell
   nvim '+PlugInstall | qa'
   ```

5. Start neovim: `nvim`
6. Install LSPs for the languages you care about via eg `:LspInstall python`.
   You can use tab completion after typing `:LspInstall ` to see which language
   servers are available

7. Add/customize your keybindings to `~/.config/nvim/init.vim`.
