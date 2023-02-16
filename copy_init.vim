syntax on
filetype plugin indent on

"""""""""""""""""""
" Functions
"""""""""""""""""""
function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

"""""""""""""""""""
" Plugins
"""""""""""""""""""
call plug#begin()

if exists('g:vscode')
else
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'Junegunn/fzf.vim'
    Plug 'ntk148v/vim-horizon'
    Plug 'chrisbra/Colorizer'
    Plug 'whatyouhide/vim-gotham'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'morhetz/gruvbox'
    Plug 'altercation/vim-colors-solarized'
    Plug 'gko/vim-coloresque'
    Plug 'dracula/vim'
    Plug 'Rigellute/shades-of-purple.vim'
    Plug 'tomlion/vim-solidity'
endif

Plug 'tpope/vim-surround'
Plug 'phaazon/hop.nvim'

" use normal easymotion when in vim mode
""Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
""" use vscode easymotion when in vscode mode
""Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
call plug#end()

"""""""""""""""""""
" UI
"""""""""""""""""""
set termguicolors
set guicursor=
"set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nowrap
set nu

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guifont=FiraCode

"autocmd vimenter * ++nested colorscheme gruvbox
if exists('g:vscode')
else
    colorscheme gruvbox
endif

"""""""""""""""""""
" Functionality
""""""""""""""""""
set autoread			
set ignorecase		        
set smartcase		        
set autoindent		        
set noswapfile
set nobackup
set clipboard=unnamedplus       
set encoding=utf-8	        
set shiftwidth=4	        
set tabstop=4
set softtabstop=4	        
set expandtab
set smartindent		        
set smarttab
set incsearch
set scrolloff=8
set noshowmode
set undodir=~/.vim/undodir
set undofile
set completeopt=menuone,noinsert,noselect
set updatetime=50
set shortmess+=c
set wildmode=longest,list,full
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
vnoremap . :normal .<CR>
set splitbelow splitright

"""""""""""""""""""
" Mapping
"""""""""""""""""""
let mapleader = " " " map leader to Space

":imap jk <Esc>

" Easymotion
"""""""""""""""""""
" <Leader>f{char} to move to {char}
map  <Leader>f <cmd>HopChar1<Cr>

" s{char}{char} to move to {char}{char}
nmap s <cmd>HopChar2<Cr>

" Move to line
map <Leader>j <cmd>HopLineStartAC<Cr>
map <Leader>k <cmd>HopLineStartBC<Cr>

" Move to word
map  <Leader>w <cmd>HopWord<Cr>
map <Leader>/ <cmd>HopPattern<Cr>

lua << EOF
require'hop'.setup()
EOF
