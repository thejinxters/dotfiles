let mapleader = ","             " allows for syntax wrapping

set nocompatible                " inables vim over vi

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My bundles here:

" original repos on GitHub
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'sickill/vim-monokai.git'
Plugin 'tomasr/molokai'

call vundle#end()
filetype plugin indent on

set background=dark
let g:molokai_original = 1

set t_Co=256
colorscheme molokai

" Settings {
set mouse=a                     " enables mouse for vim
set nu	                  			" sets line numbers
set showcmd                			" display incomplete commands
set backspace=indent,eol,start	" allows backspace to travel lines
set history=1000	             	" keep 50 lines of command line history
set incsearch              			" do incremental searching
set laststatus=2	             	" always show status bar at bottom
set autoindent		            	" automatic indentation
set cindent	                		" adds c-indent
set expandtab		              	" converts tabs to spaces
set tabstop=2		              	" sets number of spaces for tabs
set shiftwidth=2	            	" sets number of spaces for indent

set nowritebackup	            	" doesnt write backups
set nobackup		              	" do not keep a backup file
set noswapfile		            	" keeps others from sniffing in the swapfile

"Tab completion of :command
set wildmenu
set wildmode=list:longest

"Opens new split panes to the right and bottom
set splitbelow
set splitright

"Ignoring case when searching unles searching with a capital letter
set ignorecase
set smartcase
" }


" Appearance {
set ruler		                  	" show the cursor position all the time
set title                       " allows for changing of title 
set wrap                        " stops vim from auto create new lines
set cursorline                  " creates cursor line under the cursor 
set scrolloff=5                 " scrolls at 5 lines from top or bottom
set hlsearch
hi Search guibg=LightBlue
" }


" Syntax {
syntax on 
au BufNewFile,BufRead *.less set filetype=less
" }

" Auto-reload after making changes to .vimrc
au! BufWritePost .vimrc source %
map <leader>nt :execute 'NERDTreeToggle ' .getcwd()<CR>
