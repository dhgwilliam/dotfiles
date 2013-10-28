set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'jnurmine/Zenburn'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'tpope/vim-surround'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/ZoomWin'
Bundle 'rodjek/vim-puppet'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'Pychimp/vim-sol'
Bundle 'airblade/vim-gitgutter'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on     " required!

" neocomplcache keybindings
let g:neocomplcache_enable_at_startup = 1

inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" nerdtree
map <leader>n :NERDTreeToggle<CR>
" autocmd vimenter * if !argc() | NERDTree | endif

" colorscheme
color zenburn
syn on

" folding
" set fdm=syntax
" nnoremap <space><space> za
" autocmd BufRead * setlocal nofoldenable

" remove trailing whitespace in puppet files
autocmd FileType puppet autocmd BufWritePre <buffer> :%s/\s\+$//e

" tagbar
map <leader>t :TagbarToggle<CR>

" line numbering
set number

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk
map j gj
map k gk

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" tab settings
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" centralize backup files & swp files
" set backupdir=./.backup,.,/tmp
" set directory=.,./.backup,/tmp

" 80 column concern
let &colorcolumn=join(range(81,999),",")

" map CtrlP buffer search
map <Leader>b :CtrlPBuffer<CR>
map <Leader>m :CtrlPMRUFiles<CR>

" vim-gutter settings

" linebreak & wrap settings
set wrap
set linebreak
set nolist
