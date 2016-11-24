set nocompatible                    "Latest vim settings/options

so ~/.vim/plugins.vim               "Vundle plugin data file

syntax enable

set backspace=indent,eol,start		"Make backspace behave like every other editor
let mapleader=','					"set <Leader>

"------------Visuals------------"
set t_Co=256						"force 256 colors if using terminal vim
"set background=light                 "set background default to dark
colorscheme luna                    "set the theme for vim
set guifont=Source\ Code\ Pro\ 14        "set font to Liberation-Mono with fontsize 10
set guioptions-=e                   "Disable tabs
set linespace=1						"gVim-specific line-height

"Disable scrollbars in gVim
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=m	"disable menubar
set guioptions-=T	"disable toolbar

"------------Searching------------"
set hlsearch		"highlight search results
set incsearch		"highlight search results as they're typed

"------------Split Management------------"
set splitbelow		"Make horizontal splits open below by default
set splitright		"Make vertical splits open to the right by defualt

"Simpler mapping to switch between splits (ex. Ctrl-J = Ctrl-W-J)
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

nmap <C-Down> <C-W><C-J>
nmap <C-Up> <C-W><C-K>
nmap <C-Left> <C-W><C-H>
nmap <C-Right> <C-W><C-L>

"------------Editor------------"
set tabstop=4		    "size of hard tabstop		
set shiftwidth=4	    "size of indent
set softtabstop=4	    "use both spaces and tabs to simulate tabstops at a width
set smarttab		    "indent new lines
set expandtab		    "replace spaces with space
set complete=.,w,b,u    "set auto completion

"------------Swap/Backup Files------------"
set backup              "enable backup files
set backupdir=/tmp      "set backup file directory
set dir=/tmp            "set swap file location

"------------Mappings------------"
"Save files with sudo (root)
cmap w!! %!sudo tee > /dev/null %<cr>:e!<cr><cr>

"Enable line numbers
nmap <Leader>en :set number!<cr>

"Make it easy to edit Vimrc file.
nmap <Leader>ev :e $MYVIMRC<cr>

"clear search results	
nmap <Leader><space> :nohlsearch<cr>		

"toggle line indents
nmap <Leader>il :IndentLinesToggle<cr>

"------------Laravel------------"
"Artisan
nmap <Leader>laa :!php artisan
nmap <Leader>lam :!php artisan make:
nmap <Leader>lar :!php artisan routes:list<cr>

"Node
nmap <Leader>ng :!gulp<cr>

"Composer
nmap <Leader>cda :!composer dumpautoload<cr>

"Project navigation
nmap <Leader><Leader>lr :e routes/<cr>
nmap <Leader><Leader>lc :e app/Http/Controllers/<cr>
nmap <Leader><Leader>lm :e app/<cr>

"Custom style design pattern mapping
nmap <Leader><Leader>dm :e app/Models<cr>
nmap <Leader><Leader>rp :e app/Repositories<cr>

"------------Plugins------------"

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"toggle NERD Tree
nmap <A-1> :NERDTreeToggle<cr>

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"open CtrlP tag search (Ctrl-R)
nmap <C-R> :CtrlPBufTag<cr>

"open CtrlP recent files (Ctrl-E)
nmap <C-E> :CtrlPRMUFiles<cr>

"/
"/ pdv
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"/
"/ UltiSnips
"/
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir=$HOME."/.vim/UltiSnips"

"------------Auto Commands------------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %	"Automatically source the Vimrc file on save
augroup END

"------------Powerline-----------"
"Always show statusline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
