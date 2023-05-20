set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set mouse=a
set number
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set expandtab
set shiftwidth=2
set tabstop=2

call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

lua require('emad')

colorscheme dracula

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
