set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')

Plug 'kchmck/vim-coffee-script'
Plug 'Lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'rdolgushin/groovy.vim'
Plug 'Yggdroot/indentLine'
Plug 'ChesleyTan/wordCount.vim'
" theme
Plug 'jnurmine/Zenburn'
Plug 'flazz/vim-colorschemes'
Plug 'Pychimp/vim-sol'
" core plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe'
Plug 'Raimondi/delimitMate'
Plug 'godlygeek/tabular'
" markdown
Plug 'gabrielelana/vim-markdown'
" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" ruby
Plug 'tpope/vim-endwise'
" puppet
Plug 'rodjek/vim-puppet'
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-scripts/paredit.vim'
" elixir
Plug 'elixir-lang/vim-elixir'
" terraform
Plug 'hashivim/vim-terraform'
" powershell
Plug 'PProvost/vim-ps1'
" go-lang
Plug 'fatih/vim-go'
" gradle
Plug 'tfnico/vim-gradle'
" rust
Plug 'rust-lang/rust.vim'

call plug#end()

filetype plugin indent on     " required!

" force correct backspace behavior
set backspace=indent,eol,start

" nerdtree
map <leader>n :NERDTreeToggle<CR>
map <leader><leader>n :NERDTreeFocus<CR>
autocmd vimenter * if !argc() | NERDTree | endif

syn on
color zenburn
let g:airline_theme = 'laederon'
let g:airline_powerline_fonts = 1

" folding
" autocmd FileType mkd normal zR
set nofoldenable

" remove trailing whitespace in puppet files
autocmd FileType puppet autocmd BufWritePre <buffer> :%s/\s\+$//e

" stop managing hashrocket alignment, vim-puppet is too aggressive
let g:puppet_align_hashes = 0

" tagbar
map <leader>t :TagbarOpenAutoClose<CR>
map <leader>tt :TagbarToggle<CR>

" line numbering
set number
set relativenumber

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
let g:ctrlp_show_hidden = 1

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

noremap <Leader>s :%s/\s\+$//g<CR>

let g:syntastic_ruby_checkers = ['rubocop', 'mri']

map <Leader>w :WordCount<cr>

" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" xclip
noremap <Leader>y :!xclip -selection clipboard<CR>
