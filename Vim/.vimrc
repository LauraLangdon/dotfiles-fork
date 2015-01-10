" sheharyar's .vimrc
" ------------------


" Load Vundle Plugins
"
filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'gmarik/Vundle.vim'
	Plugin 'tpope/vim-fugitive'
	Plugin 'airblade/vim-gitgutter'
	Plugin 'bling/vim-airline'
call vundle#end()



" General
"
filetype plugin indent on
syntax on
set history=100 				" command line history
set autoread 					" reload files (no local changes only)



" UI
"
set ruler 					" show the cursor position all the time
set noshowcmd 					" don't display incomplete commands
set cursorline					" underline the line i'm currently on
set nostartofline 				" don't jump to the start of line when scrolling
set report=0 					" tell us about changes
set number 					" line numbers
set ttimeoutlen=50				" recommended by airline
set laststatus=2				" needed for airline to be visible

let g:airline_theme           = 'bubblegum'	" Set my theme for Airline
let g:airline_powerline_fonts = 1		" Use the sexy fonts used in Powerline
let g:gitgutter_realtime      = 1		" Set Gitgutter to realtime 
let g:gitgutter_eager         = 1		" and eager

hi SignColumn ctermbg=none			" Make Gitgutter Transparent
hi LineNr     ctermbg=none ctermfg=darkgray	" Do the same for Line Number columns


