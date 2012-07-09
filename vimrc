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
set ruler                   " Display cursor position on the bottom right
set number                  " Show line number
set nowrap                  " Don't wrap lines
set nolist                  " Don't show invisiable chars
set showmatch               " Show matching parenthesis
set cpoptions+=$            " Show editing range for 'c' command
set visualbell              " Use visual bell instead of beep
set noerrorbells            " Don't beep on error
"
"}}}1

"====== Behavior Settings ================================================ {{{1
"
set hidden                  " Switch between unsaved buffers
set wildmenu                " List avaliable ex commands for completing
set backspace=eol,start,indent
                            " Allow backspacing over everything in insert mode

"------ Searching -------------------------------------------------------- {{{2
"
set hlsearch                " Highlight all search results
set incsearch               " Search while typing
set smartcase               " Ignore case if search pattern is all
                            "+ lowercase, case-sensitive otherwise
set ignorecase              " Case insensitive searching
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
"}}}1

" vim: foldenable foldcolumn=1 foldmethod=marker
