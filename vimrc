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
Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'

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

""" Misc.
syntax on
set nu
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

""" CMD Autocomple
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
set showcmd

""" Airline
set laststatus=2
"let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.sls set filetype=yaml

