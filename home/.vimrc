set nocompatible               " be iMproved
filetype off                   " required!

" Bootstrap Vundle
let vundle_ready = 1
  if !filereadable(expand('~/.vim/bundle/vundle/README.md'))
  let vundle_ready = 0
  echo 'Found that Vundle is not installed. Installing...'
  echo
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'jnurmine/Zenburn'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'majutsushi/tagbar'
Bundle 'rodjek/vim-puppet'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'Pychimp/vim-sol'
Bundle 'airblade/vim-gitgutter'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'mbbill/undotree'
Bundle 'mileszs/ack.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'rdolgushin/groovy.vim'
Bundle 'fatih/vim-go'
Bundle 'Yggdroot/indentLine'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-endwise'

if vundle_ready == 0
    echo 'Installing bundles...'
    echo
    :BundleInstall
endif

filetype plugin indent on     " required!

" force correct backspace behavior
set backspace=indent,eol,start

" nerdtree
map <leader>n :NERDTreeToggle<CR>
map <leader><leader>n :NERDTreeFocus<CR>
" autocmd vimenter * if !argc() | NERDTree | endif

syn on
color zenburn
let g:airline_theme = 'laederon'

" folding
autocmd FileType mkd normal zR

" remove trailing whitespace in puppet files
autocmd FileType puppet autocmd BufWritePre <buffer> :%s/\s\+$//e

" tagbar
map <leader>t :TagbarOpenAutoClose<CR>
map <leader>tt :TagbarToggle<CR>

" line numbering
set number

" Map the arrow keys to be based on display lines, not physical lines
nnoremap <silent> j :<C-U>call Down(v:count)<CR>
vnoremap <silent> j gj

nnoremap <silent> k :<C-U>call Up(v:count)<CR>
vnoremap <silent> k gk

" include this function from http://stackoverflow.com/questions/20975928/moving-the-cursor-through-long-soft-wrapped-lines-in-vim
" to make 10k work correctly in relativenumber
function! Down(vcount)
  if a:vcount == 0
    exe "normal! gj"
  else
    exe "normal! ". a:vcount ."j"
  endif
endfunction

function! Up(vcount)
  if a:vcount == 0
    exe "normal! gk"
  else
    exe "normal! ". a:vcount ."k"
  endif
endfunction

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" tab, linebreak & wrap settings
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set wrap
set linebreak
set nolist

" 80 column concern
if exists('+colorcolumn')
  let &colorcolumn=80
endif

" map CtrlP buffer & MRU search
map <Leader>b :CtrlPBuffer<CR>
map <Leader>m :CtrlPMRUFiles<CR>

" airline settings
let g:airline#extensions#tabline#enabled = 1

" buffer navigation
map <Leader>] :bn<CR>
map <Leader>[ :bp<CR>
" tab navigation
map <Leader>tn :tabnew<CR>
map <Leader>tc :tabclose<CR>
map <Leader><Leader>] :tabn<CR>
map <Leader><Leader>[ :tabp<CR>


noremap <Leader>= :Tab /=<CR>
noremap <Leader><Leader>= :Tab /=><CR>

" overtone REPL shortcuts
map <Leader>e {V}:Eval<CR>

" ack settings
let g:ack_default_options = " -s -H --nocolor --nogroup --column --ignore-dir=.pe_build --ignore-dir=.vagrant --ignore-dir=coverage"

set modeline
set modelines=5

" centralize swap files
set directory=/tmp,/Users/david/.vim/swp

set relativenumber

" permanent undo
if has("persistent_undo")
  set undodir=expand('~/.vim/undodir/')
  set undofile
endif

" set paste
map <Leader>p :set paste!<CR>

" go stuff
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
"
" options i stole from /etc/vim/vimrc
set showcmd    " Show (partial) command in status line.
set showmatch  " Show matching brackets.
set ignorecase " Do case insensitive matching
set smartcase  " Do smart case matching
set incsearch  " Incremental search

" undotree
nnoremap <Leader>u :UndotreeToggle<cr>

" indentLine
let g:indentLine_color_term = 241

" force airline to show up
set laststatus=2
let g:airline_theme='base16'
