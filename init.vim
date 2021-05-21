lua <<EOF

plugins = {
    "nvim-lua/plenary.nvim",
    "nvim-lua/popup.nvim",
    "nvim-telescope/telescope.nvim",
    "neovim/nvim-lspconfig",
    "kabouzeid/nvim-lspinstall",
    "glepnir/lspsaga.nvim",
    "hrsh7th/nvim-compe",
    {"nvim-treesitter/nvim-treesitter", "{'do': ':TSUpdate'}"},
    "nvim-treesitter/nvim-treesitter-textobjects",

    "glepnir/galaxyline.nvim",

    "NLKNguyen/papercolor-theme",
    "nikvdp/neomux",

    "tpope/vim-ragtag",
    "tpope/vim-surround",
    "tpope/vim-unimpaired",

    "tpope/vim-eunuch",
    "tpope/vim-fugitive",

    "tomtom/tcomment_vim",

    }


require("pluginloader")
Load_plugins(plugins)

EOF


colorscheme PaperColor
set number
set relativenumber
set ignorecase      " ignore case
set smartcase     " but don't ignore it, when search string contains uppercase letters
set nocompatible
set incsearch        " do incremental searching
set visualbell
set expandtab
set tabstop=4
set nocompatible
set ruler
set smartindent
set shiftwidth=4
syntax on
set hlsearch
set virtualedit=all
set ignorecase
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set tabstop=4
set number        " line numbers
set autoindent
set mouse=a  " mouse support


" Lsp key bindings
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> ca    <cmd>Lspsaga code_action<CR>
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>

set number relativenumber

lua <<EOF
require("lsp")
require("treesitter")
require("statusbar")
EOF
