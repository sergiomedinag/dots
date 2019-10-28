" Basic settings
set nocompatible
set t_Co=256
set encoding=utf-8
filetype off
syntax on
set number
set ruler
set cursorline

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
set guioptions-=T
set linespace=2

" Whitespace settings
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list
set backspace=indent,eol,start

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whites ace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set hlsearch
set ignorecase

""
"" Spliting
""
set splitright
set splitbelow


""
"" Motion between tabs and splits
""
" Move to the bottom split with ctrl-down
  nmap <C-J> <C-W><C-J>
" Move to the upper split with ctrl-down
  nmap <C-K> <C-W><C-K>
" Move to the left split with ctrl-left
  nmap <C-H> <C-W><C-H>
" Move to the right split with ctrl-right
  nmap <C-L> <C-W><C-L>

let mapleader=","

set rtp+=~/.vim/bundle/Vundle.vim

" Vim plugins
call vundle#begin()

  Plugin 'gmarik/Vundle.vim'
  " Airline status bar
  Plugin 'bling/vim-airline'

  "General Coding
  Plugin 'tpope/vim-surround'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'tpope/vim-fugitive'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'ddollar/nerdcommenter'
  Plugin 'ervandew/supertab'
  Plugin 'jeetsukumaran/vim-buffergator'
  Plugin 'scrooloose/syntastic'
  Plugin 'bronson/vim-trailing-whitespace'
  Plugin 'sjl/gundo.vim'
  Plugin 'vim-scripts/taglist.vim'

  " Coloring
  Plugin 'daylerees/colour-schemes', { 'rtp': 'vim/' }


  " HTML
  Plugin 'mattn/emmet-vim'

  " Css
  Plugin 'hail2u/vim-css3-syntax'
  Plugin 'groenewege/vim-less'
  Plugin 'skammer/vim-css-color'

call vundle#end()
" End vim plugins
filetype plugin indent on



color halflife
set laststatus=2
let g:airline_powerline_fonts=1

""
"" Timesavers maps
""
nmap <leader>w :w<CR>
nmap <leader>W :w<CR>
nmap <leader>h :nohl<cr>

"" 
"" Plugins Remaps
""
nnoremap <leader>u :GundoToggle<CR>

