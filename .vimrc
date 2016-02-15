"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

cd ~/projects


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme used
colorscheme obsidian2

" Set 7 lines to the cursor - when moving vertically using j/k
set so=5

" default
syntax on

" cjj to leave insert mode
imap jj <esc>

" move between split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" prevent p to yank :D
xnoremap p "_dP

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Turn on the WiLd menu
set wildmenu

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Wildignore geral
set wildignore+=*/node_modules/*,*/bower_components/*,*/.git/*,*.swp,*.svn/*,*/.DS_Store

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set smartindent
set wrap "Wrap lines

" alway show numbers
set relativenumber
au FocusLost * set number
au FocusGained * set relativenumber

autocmd InsertEnter * set number
autocmd InsertLeave * set relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundler
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

" Start Vundle plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " Required for Vundle manage Vundle
Plugin 'ctrlp.vim'            " Fuzzy finder
Plugin 'Yggdroot/indentLine'  " Shows the indentation of the file

call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle plugins

