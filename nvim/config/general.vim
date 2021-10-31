"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

" leader
let mapleader = " "

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

"show current commangd going on at the bottom line
set showcmd

"also show mode
set showmode

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

"add some line space for easy reading
set linespace=3

"show current line
set cursorline!

"disable visual bell
set visualbell t_vb=

"indent settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set smartindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildchar=<Tab>

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"hide buffers when not displayed
set hidden

"Activate smartcase
set ic
set smartcase
set ignorecase

"mouse
set mouse=a

set relativenumber
set nu

set t_Co=256

set background=dark
set termguicolors

set noswapfile

"turn off needless toolbar on gvim/mvim
set guioptions-=T
"turn off the scroll bar
set guioptions-=L
set guioptions-=r

"show invisible characters
"set list
"set listchars=eol:¬,tab:>•,trail:~,extends:>,precedes:<,space:•

"colorscheme new-railscasts
"colorscheme sialoquent
"colorscheme nord
"colorscheme gotham
"colorscheme PaperColor
"colorscheme onedark
"colorscheme yowish
"colorscheme one
"colorscheme gruvbox
colorscheme iceberg
"colorscheme babymate256
"colorscheme sierra
"colorscheme deus

"gui stuff
set guifont=Monaco\ 13
set guioptions=
set guicursor=n-c-v:block-Cursor/Cursor-blinkon0
set guicursor+=i-ci:ver1-Cursor/Cursor-blinkwait300-blinkon200-blinkoff150
set vb t_vb=

"fixes cases when PATH python is different. Should be used with alias
"let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7'

let g:tsuquyomi_completion_detail = 1
set completeopt=longest,menuone
set omnifunc=tsuquyomi#complete
"let g:tsuquyomi_use_local_typescript = 0
"let g:tsuquyomi_use_dev_node_module = 0
let g:tsuquyomi_shortest_import_path = 1

"alias for sudo write :Sw
command! -nargs=0 Sw w !sudo tee % > /dev/null
