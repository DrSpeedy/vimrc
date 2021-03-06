filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jwalton512/vim-blade'
Plugin 'Yggdroot/indentLine'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'ervandew/supertab'
"Plugin 'itchyny/lightline.vim'
"Plugin 'SirVer/ultisnips'
Plugin 'tobyS/vmustache'
Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'tobyS/pdv'                      " PHP Documentor
"Plugin 'nathangrigg/vim-beancount'
Plugin 'pangloss/vim-javascript'
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'benmills/vimux'
Plugin 'morhetz/gruvbox'

"Vim shell
"Plugin 'Shougo/vimproc'
"Plugin 'Shougo/vimshell.vim'

"File manager
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'Shougo/unite.vim'
"Plugin 'Shougo/vimfiler.vim'

"Git
Plugin 'tpope/vim-fugitive'
Plugin 'ryanoasis/vim-devicons'

"Startup
Plugin 'mhinz/vim-startify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


