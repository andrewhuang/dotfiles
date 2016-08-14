""" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" General
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'henrik/vim-indexed-search'
Plugin 'craigemery/vim-autotag'
Plugin 'ctrlpvim/ctrlp.vim'

" Townsquared
Plugin 'tpope/vim-cucumber'
Plugin 'cakebaker/scss-syntax.vim'

"Plugin 'kchmck/vim-coffee-script'
"Plugin 'digitaltoad/vim-jade.git'
"Plugin 'groenewege/vim-less'
"Plugin 'fatih/vim-go'
"Plugin 'chrisbra/csv.vim.git'
"Plugin 'wlangstroth/vim-racket'
"Plugin 'solarnz/thrift.vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""" Indenting
set tabstop=2
set shiftwidth=2
set expandtab


""" UI Tweaks
syntax on

" Hybrid line numbers requires vim 7.4+
set number
set relativenumber

set colorcolumn=80
hi ColorColumn term=reverse ctermbg=0 guibg=Black
set nowrap

colorscheme solarized
set background=dark


""" Search
set incsearch
set smartcase
set ignorecase
set hlsearch


""" CMD Autocomplete
set wildmenu
set wildmode=list:longest:full


""" Input
set mouse=a

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

map <Space> <Leader>
nnoremap <Leader>x i
"set showcmd


""" File Navigation
set autochdir


""" Airline
set laststatus=2
"let g:airline_powerline_fonts = 1
"let g:airline_theme='solarized'

au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.sls set filetype=yaml


""" NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>


""" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
