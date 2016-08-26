""" @andrewhuang .vimrc 2016 ( ﾟ▽ﾟ)/

set nocompatible " be iMproved

""" vim-plug
call plug#begin('~/.vim/plugged')

" General
Plug 'bling/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'henrik/vim-indexed-search'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim' " TODO: learn fzf
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
"Plug 'scrooloose/nerdcommenter' // I never use this
"Plug 'scrooloose/nerdtree'      // I never use this
"Plug 'scrooloose/syntastic'     // Makes start up slow; should load it async
"Plug 'tpope/vim-surround'       // I never use this

" Themes
Plug 'morhetz/gruvbox'
"Plug 'altercation/vim-colors-solarized'

" Townsquared
Plug 'tpope/vim-cucumber'
Plug 'cakebaker/scss-syntax.vim'
Plug 'burnettk/vim-angular'

" Language specific
"Plug 'skammer/vim-css-color'
"Plug 'pangloss/vim-javascript'
"Plug 'kchmck/vim-coffee-script'
"Plug 'digitaltoad/vim-jade.git'
"Plug 'groenewege/vim-less'
"Plug 'fatih/vim-go'
"Plug 'chrisbra/csv.vim.git'
"Plug 'wlangstroth/vim-racket'
"Plug 'solarnz/thrift.vim'
"Plug 'mxw/vim-jsx'

call plug#end()


""" Built in packages
packadd! matchit


""" Indenting
set tabstop=2
set shiftwidth=2
set expandtab


""" UI
syntax enable

" Hybrid line numbers requires vim 7.4+
set number
set relativenumber

set cursorline
set colorcolumn=80
hi ColorColumn term=reverse ctermbg=0 guibg=Black
"set nowrap

colorscheme gruvbox
set background=dark


""" Buffers and Tabs
set hidden


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
inoremap jk <esc>
"set showcmd

noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

""" File Navigation
set autochdir
noremap <Leader>e :e<Space>
noremap <Leader>w :w<CR>
noremap <Leader>n :bn<CR>
noremap <Leader>p :bp<CR>
nnoremap <Leader>x :bd<CR>
noremap <Leader>v :vsp<Space>
noremap <Leader>s :sp<Space>
noremap <Leader>qq :q<CR>


""" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.sls set filetype=yaml


""" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_html_tidy_blocklevel_tags = ['ui-view']

""" NERDTree
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1

"nnoremap <Leader>f :NERDTreeToggle<Enter>
"nnoremap <silent> <Leader>v :NERDTreeFind<CR>


""" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" bind \ (backward slash) to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <Leader>/ :Ag<space>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
