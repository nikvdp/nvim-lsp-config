call plug#begin('~/.vim/plugged')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    " status bar
    Plug 'glepnir/galaxyline.nvim'

    Plug 'NLKNguyen/papercolor-theme'
    Plug 'nikvdp/neomux'
call plug#end()

colorscheme PaperColor

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
