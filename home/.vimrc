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
if has("lua")
  Bundle 'Shougo/neocomplete.vim'
endif
Bundle 'tpope/vim-surround'
Bundle 'majutsushi/tagbar'
" Bundle 'vim-scripts/ZoomWin'
Bundle 'rodjek/vim-puppet'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'Pychimp/vim-sol'
Bundle 'airblade/vim-gitgutter'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'rdolgushin/groovy.vim'
Bundle 'fatih/vim-go'

" overtone plugins
" Bundle 'guns/vim-clojure-static'
" Bundle 'tpope/vim-fireplace'
" Bundle 'tpope/vim-classpath'
" Bundle 'guns/vim-clojure-highlight'

if vundle_ready == 0
    echo 'Installing bundles...'
    echo
    :BundleInstall
endif

filetype plugin indent on     " required!

if has("lua")
  "Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
  " Disable AutoComplPop.
  let g:acp_enableAtStartup = 0
  " Use neocomplete.
  let g:neocomplete#enable_at_startup = 1
  " Use smartcase.
  let g:neocomplete#enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

  " Define dictionary.
  let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
          \ }

  " Define keyword.
  if !exists('g:neocomplete#keyword_patterns')
      let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'

  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplete#undo_completion()
  inoremap <expr><C-l>     neocomplete#complete_common_string()

  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
  endfunction

  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplete#close_popup()
  inoremap <expr><C-e>  neocomplete#cancel_popup()

  " AutoComplPop like behavior.
  "let g:neocomplete#enable_auto_select = 1

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType ruby setlocal omnifunc=rubycomplete#CompleteTags
endif

" force correct backspace behavior
set backspace=indent,eol,start

" nerdtree
map <leader>n :NERDTreeToggle<CR>
map <leader><leader>n :NERDTreeFocus<CR>
" autocmd vimenter * if !argc() | NERDTree | endif

syn on
" colorscheme dark
" color zenburn
" AirlineTheme zenburn
" colorscheme light
color pyte
let g:airline_theme = 'laederon'

" folding
autocmd FileType mkd normal zR

" remove trailing whitespace in puppet files
autocmd FileType puppet autocmd BufWritePre <buffer> :%s/\s\+$//e

" tagbar
map <leader>t :TagbarToggle<CR>

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
