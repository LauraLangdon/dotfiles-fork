
" Load my Vundle Plugins

filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    " Vundle Itself
    Plugin 'gmarik/Vundle.vim'

    " UI Plugins
    Plugin 'airblade/vim-gitgutter'
    Plugin 'bling/vim-airline'

    " Features
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'Valloric/MatchTagAlways'
    Plugin 'kien/ctrlp.vim'
    Plugin 'terryma/vim-multiple-cursors'

    " NerdTree Plugins
    Plugin 'scrooloose/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'jistr/vim-nerdtree-tabs'

    " Syntax Highlighting Plugins
    Plugin 'slim-template/vim-slim'
    Plugin 'kchmck/vim-coffee-script'
    Plugin 'elixir-lang/vim-elixir'

    " Others
    Plugin 'wakatime/vim-wakatime'
    Plugin 'tpope/vim-fugitive'

call vundle#end()

