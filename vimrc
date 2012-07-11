" Prevent VIM from being in VI compatible mode
set nocompatible

"====== Common Settings ================================================== {{{1
"
set viminfo='1000,f1,:1000,/1000
set history=1000            " Remember more search and commands history
set undolevels=1000         " Use as many levels of undo as possible
"
"}}}1

"====== Visual Settings ================================================== {{{1
"
syntax on                   " Enable syntax highlighting
set title                   " Change the terminal's title
set ruler                   " Display cursor position on the bottom right
set number                  " Show line number
set nowrap                  " Don't wrap lines
set nolist                  " Don't show invisiable chars
set showmatch               " Show matching parenthesis
set listchars=tab:▸-        " Change marks of the invisiable chars.
set listchars+=eol:¬
set listchars+=extends:>
set listchars+=precedes:<
set cpoptions+=$            " Show editing range for 'c' command
set visualbell              " Use visual bell instead of beep
set noerrorbells            " Don't beep on error
set cursorline              " Highlight current line
set cursorcolumn            " Highlight current column

"------ Color Scheme ----------------------------------------------------- {{{2
"
set background=dark
colorscheme ron
"
"}}}1

"====== Behavior Settings ================================================ {{{1
"
set hidden                  " Switch between unsaved buffers
set wildmenu                " List avaliable ex commands for completing
set backspace=eol,start,indent
                            " Allow backspacing over everything in insert mode

filetype plugin on          " Enable filetype based plugin
filetype indent on          " Indent intelligently based on the
                            "+ syntax rules for the filetype

"------ Searching -------------------------------------------------------- {{{2
"
set incsearch               " Search while typing
set smartcase               " Ignore case if search pattern is all
                            "+ lowercase, case-sensitive otherwise
set ignorecase              " Case insensitive searching
set nohlsearch              " Don't Highlight search results
"
"}}}2

"------ Indentation ------------------------------------------------------ {{{2
"
set tabstop=4               " one tab = four spaces
set smarttab                " Insert tabs on the start of a line
                            "+ according to shiftwidth
set expandtab               " Use spaces instead of tabs
set autoindent              " Enable auto indenting
set copyindent              " Copy the previous indentation on auto indenting
set shiftwidth=4            " Indent to four spaces
set shiftround              " Use multiple of shiftwidth when indenting
                            " with '<' and '>'
"
"}}}2

"------ Code Folding ----------------------------------------------------- {{{2
"
set foldenable              " Enable folding
set foldcolumn=1            " Show folding indicating column
                            "+ on the left side of the window
set foldmethod=marker       " Fold according to markers
"
"}}}2

"------ File Ignoring ---------------------------------------------------- {{{2
"
set wildignore+=*.swp,*.bak
set wildignore+=CVS,.svn,.git
set wildignore+=*.jpg,*.png,*.xpm,*.gif
set wildignore+=*.o,*.a,*.mo,*.la,*.so,*.obj,*.pyc,*.class
"
"}}}1

"====== Key Bindings Customization ======================================= {{{1
"
" F2 = Toggle Paste Mode
set pastetoggle=<F2>

" Edit and reload .vimrc file
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>

" Life saver
nnoremap ; :

" Enable hlsearch
nnoremap / :set hlsearch<CR> /
nnoremap ? :set hlsearch<CR> ?
nnoremap * :set hlsearch<CR> *
nnoremap # :set hlsearch<CR> #
"
"}}}1

if filereadable($HOME.'/.vimrc_local')
    source $HOME/.vimrc_local
endif

" vim: foldenable foldcolumn=1 foldmethod=marker
