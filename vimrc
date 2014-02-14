let mapleader = ","             " allows for syntax wrapping

set nocompatible                " inables vim over vi

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:

" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

filetype plugin indent on


" Settings {
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
set background=dark             " set background highlighting to dark
set hlsearch
hi Search guibg=LightBlue
" }


" Syntax {
syntax on
au BufNewFile,BufRead *.less set filetype=less
" }

" Auto-reload after making changes to .vimrc
au! BufWritePost .vimrc source %
