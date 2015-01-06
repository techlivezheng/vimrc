" Prevent VIM from being in VI compatible mode
set nocompatible

set nomodeline

" Redefine Leader key
let mapleader=","

" Redefine Local Leader key
let maplocalleader='\'

" Put all swap files together into /tmp directory
"silent !mkdir /tmp/vim-$(id -u) &>/dev/null
"let &directory='/tmp/vim-'.str2nr(system('id -u')).'//,'.&directory

"set dictionary+=~/.vim/misc/english.dict

"====== Plugin Settings ================================================== {{{1
"
" Required by Vundle
filetype off

" Add Vundle to runtimepath
set rtp+=~/.vim/bundle/vundle/

" Initialize Vundle
call vundle#rc()

Bundle 'gmarik/vundle',                    {'dir': 'vundle'}

Bundle 'tpope/vim-repeat',                 {'dir': 'plugin-repeat'}
Bundle 'tpope/vim-surround',               {'dir': 'plugin-surround'}

"Bundle 'matchit.zip',                      {'dir': 'plugin-matchit'}
"Bundle 'Lokaltog/vim-powerline',           {'dir': 'plugin-powerline'}
"Bundle 'Townk/vim-autoclose',              {'dir': 'plugin-autoclose'}
"Bundle 'Lokaltog/vim-easymotion',          {'dir': 'plugin-easymotion'}
"Bundle 'majutsushi/tagbar',                {'dir': 'plugin-tagbar'}
"Bundle 'scrooloose/nerdtree',              {'dir': 'plugin-nerdtree'}
"Bundle 'jistr/vim-nerdtree-tabs',          {'dir': 'plugin-nerdtree-tabs'}
"Bundle 'fholgado/minibufexpl.vim',         {'dir': 'plugin-minibufexpl'}
"Bundle 'tomtom/tlib_vim',                  {'dir': 'plugin-tlib'}
"Bundle 'tomtom/checksyntax_vim',           {'dir': 'plugin-checksyntax'}
Bundle 'ervandew/screen',                  {'dir': 'plugin-screen'}
"Bundle 'Tab-Name',                         {'dir': 'plugin-tabname'}
"Bundle 'Yggdroot/indentLine',              {'dir': 'plugin-indentline'}
"Bundle 'Shougo/neosnippet.vim',            {'dir': 'plugin-neosnippet'}
"Bundle 'Shougo/neocomplete.vim',           {'dir': 'plugin-neocomplete'}
"Bundle 'ZoomWin',                          {'dir': 'plugin-zoomwin'}
""Bundle 'VimIM',                            {'dir': 'plugin-vimim'}
"
""Git
""Bundle 'sjl/splice.vim',                   {'dir': 'plugin-splice'}
Bundle 'mhinz/vim-signify',                {'dir': 'plugin-signify'}
Bundle 'tpope/vim-fugitive',               {'dir': 'plugin-fugitive'}
"
""HTML
""Bundle 'mattn/zencoding-vim',              {'dir': 'plugin-zencoding'}
"
""PHP
""Bundle 'phpfolding.vim',                   {'dir': 'plugin-phpfolding'}
"Bundle 'shawncplus/phpcomplete.vim',       {'dir': 'plugin-phpcomplete'}
"Bundle 'techlivezheng/tagbar-phpctags',    {'dir': 'plugin-tagbar-phpctags'}
"
"Bundle 'tkztmk/vim-vala',                  {'dir': 'filetype-vala'}
"Bundle 'plasticboy/vim-markdown',          {'dir': 'filetype-markdown'}
"
""Colors
Bundle 'peaksea',                          {'dir': 'colors-peaksea'}
Bundle 'altercation/vim-colors-solarized', {'dir': 'colors-solarized'}
"
""Bundle 'msanders/snipmate.vim',           {'dir': 'plugin-snipmate'}
""Bundle 'wincent/Command-T',               {'dir': 'plugin-command-t'}
"" this create temporary dir in /tmp
""Bundle 'tomtom/quickfixsigns_vim',        {'dir': 'plugin-quickfixsigns'}
""Bundle 'benmills/vimux',                  {'dir': 'plugin-vimux'}
""Bundle 'xolox/vim-easytags',              {'dir': 'plugin-easytags'}
"Bundle 'Shougo/vimproc',                  {'dir': 'plugin-vimproc'}
""Bundle 'Shougo/neocomplcache',            {'dir': 'plugin-neocomplcache'}
"
"Bundle 'PotatoesMaster/i3-vim-syntax',    {'dir': 'filetype-i3'}

autocmd BufEnter *i3/config setlocal filetype=i3

filetype plugin on          " Enable filetype based plugin
filetype indent on          " Indent intelligently based on the
                            "+ syntax rules for the filetype

"------ Vundle ----------------------------------------------------------- {{{2
"
" Required by Vundle
" Let Vundle manage itself
"
"}}}2

"------ PowerLine --- ---------------------------------------------------- {{{2
"

if &t_Co >= 256 || has("gui_running")
    " In order to view fancy symbols for powerline, a patched font should
    " be placed in ~/.fonts, misc/VeraMono-Powerline.ttf is a good choice.
    " https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
    let g:Powerline_symbols = 'fancy'
endif
"
"}}}2

"------ Tagbar ----------------------------------------------------------- {{{2
"

let g:tagbar_sort=0
let g:tagbar_width=36
"
"}}}2

"------ Tagbar-PHPCtags -------------------------------------------------- {{{2
"
"
"}}}2

"------ NERDTree --------------------------------------------------------- {{{2
"

let NERDTreeHighlightCursorline=1
"
"}}}2

"------ snipMate --------------------------------------------------------- {{{2
"
"
"}}}2

"------ Command-T -------------------------------------------------------- {{{2
"
"
"}}}2

"------ MiniBufferExplorer ----------------------------------------------- {{{2
"
set splitbelow
let g:miniBufExplBRSplit = 0
"let g:miniBufExplSortBy = "mru"
let g:miniBufExplAutoStart = 1
"let g:miniBufExplDebugLevel = 10
let g:miniBufExplHideWhenDiff = 1
let g:miniBufExplBuffersNeeded = 0
let g:miniBufExplUseSingleClick = 1
"
"}}}2

"------ Repeat ----------------------------------------------------------- {{{2
"
"
"}}}2

"------ Surround --------------------------------------------------------- {{{2
"
"
"}}}2

"------ Peaksea Color Scheme --------------------------------------------- {{{2
"
"
"}}}2

"------ Solarized Color Scheme ------------------------------------------- {{{2
"
"
"}}}2

"------ CheckSyntax ------------------------------------------------------ {{{2
"
"
"}}}2

"------ QuickFixSigns ---------------------------------------------------- {{{2
"
" Optional dependency for balloon support in graphical version

" https://github.com/tomtom/quickfixsigns_vim/issues/23
let g:quickfixsigns_blacklist_buffer=
            \       '\(^__.*__$\)\|\(^NERD_tree_.*$\)\|\(^-MiniBufExplorer-$\)'
"
"}}}2

"------ Markdown Syntax -------------------------------------------------- {{{2
"
"
"}}}2

"------ EasyMotion ------------------------------------------------------- {{{2
"
"
"}}}2

"------ Screen ----------------------------------------------------------- {{{2
"

let g:ScreenImpl = 'Tmux'
"
"}}}2

"------ Vimux ------------------------------------------------------------ {{{2
"
"
"}}}2

"------ NERDTree Tabs ---------------------------------------------------- {{{3
"
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_synchronize_view = 0
let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_no_startup_for_diff = 1
"
"}}}2

"------ Tab Name --------------------------------------------------------- {{{2
"
"http://www.vim.org/scripts/script.php?script_id=1678
"
"}}}2

"------ Fugitive --------------------------------------------------------- {{{2
"
"http://www.vim.org/scripts/script.php?script_id=2975
"https://github.com/tpope/vim-fugitive
"
"}}}2

"------ EasyTags --------------------------------------------------------- {{{2
"
"http://www.vim.org/scripts/script.php?script_id=3114
"http://github.com/xolox/vim-easytags
"let g:easytags_auto_highlight = 0
"
"}}}2

"------ Indent Line ------------------------------------------------------ {{{2
"
"http://www.vim.org/scripts/script.php?script_id=2975
"https://github.com/tpope/vim-fugitive

autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_syntax_length = 3

let g:neocomplete#sources#dictionary#dictionaries = {
\    'default' : '',
\    'text'     : $HOME.'/.vim/misc/english.dict',
\ }

let g:neosnippet#snippets_directory='~/.vim/bundle/plugin-snipmate/snippets'

" <CR>: close popup and save indent.
inoremap <expr> <CR> pumvisible() ? neocomplete#close_popup() : "\<CR>"

" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? neocomplete#smart_close_popup() : "\<TAB>"

" SuperTab like snippets behavior.
"inoremap <expr> <TAB> neosnippet#expandable_or_jumpable() ?  neosnippet#expand_or_jump_impl() : pumvisible() ? neocomplete#smart_close_popup() : "\<TAB>"

let g:zoomwin_localoptlist   = ["ai","ar","bh","bin","bl","bomb","bt","cfu","ci","cin","cink","cino","cinw","cms","com","cpt","diff","efm","eol","ep","et","fenc","fex","ff","flp","fo","ft","gp","imi","ims","inde","inex","indk","inf","isk","key","kmp","lisp","mps","ml","ma","mod","nf","ofu","oft","pi","qe","ro","sw","sn","si","sts","spc","spf","spl","sua","swf","smc","syn","ts","tx","tw","udf","wm", "wfh", "wfw"]
"
"}}}1

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
set novisualbell            " Disable visual bell, it is annoying.
set noerrorbells            " Don't beep on error
set nocursorline            " Don't highlight current line
set nocursorcolumn          " Don't highlight current column


"------ Terminals -------------------------------------------------------- {{{2
"
" For a Tmux or Screen session, the inside color support depend on the
" outside $TERM setting. The outside color support should be equal or
" greater than the inside.
"
" For a full-featured experience of some 256 colors color cheme in terminal
" emulator, a proper $TERM variable must be set.
"
if &term =~ "linux" " A linux console
    set t_Co=8
" By setting $TERM shell environmental variable to 'xterm-256color'
" in $HOME/.xprofile or $HOME/.xinitrc, it will take effect when X
" is loading.
elseif &term =~ "xterm-256color" " A X terminal emulator, 256 colors
    set t_Co=256
elseif &term =~ "xterm-16color" " A X terminal emulator, 256 colors
    set t_Co=16
elseif &term =~ "xterm" " A X terminal emulator
    set t_Co=8
" For Tmux, the defualt terminal could be set to 'screen-256color' by
" having `set -g default-terminal 'screen-256color'` in tmux.conf file.
elseif &term =~ "screen-256color" " Tmux or Screen, 256 colors
    set t_Co=256
elseif &term =~ "screen-16color" " Tmux or Screen, 256 colors
    set t_Co=16
elseif &term =~ "screen" " Tmux or Screen
    set t_Co=8
endif
"
"}}}2

"------ Color Scheme ----------------------------------------------------- {{{2
"
" Mustang:
" http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484
" A great color sheme, 256 colors.
" Peaksea:
" http://www.vim.org/scripts/script.php?script_id=760
" Better in diff mode, 256 colors.
" Solarized:
" http://ethanschoonover.com/solarized
" A much more adaptable color scheme, needs extra coinfigurations for
" terminals.
"
" A X terminal emulator should use 'Solarized Palette' in order to get
" solarized color scheme working properly.
"
" Solarized color scheme could be configured by setting $SOLARIZED_PALETTE
" environmental variable to 'dark' or 'light' accordingly.
"
" If no palette has been configured, then the Solarized color scheme could
" run in a 256 colors compatible mode by setting $SOLARIZED_COMPATIBLE to
" 'true' environmental  variable.
"
set background=dark

if &t_Co >= 256 || has("gui_running")
    if &diff
        colorscheme peaksea
    elseif has("gui_running")
        colorscheme solarized
    else
        if exists("$SOLARIZED_COMPATIBLE")
            if $SOLARIZED_PALETTE == 'light'
                set background=light
            endif
            let g:solarized_termcolors=256
            colorscheme solarized
        elseif exists("$SOLARIZED_PALETTE")
            if $SOLARIZED_PALETTE == 'light'
                set background=light
            endif
            colorscheme solarized
        else
            colorscheme mustang
        endif
    endif
elseif &t_Co >= 16
    colorscheme solarized
else
    colorscheme solarized
endif
"
"}}}2

" Unify colors of the info columns on the
"+ left side of the window
highlight LineNr ctermbg=NONE guibg=NONE
highlight FoldColumn ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
highlight CursorLineNr ctermbg=NONE guibg=NONE
"
"}}}1

"====== Behavior Settings ================================================ {{{1
"
set hidden                  " Switch between unsaved buffers
set wildmenu                " List avaliable ex commands for completing
set wildmode=longest:full,full   " Complete till longest common string with wildmenu
set backspace=eol,start,indent
                            " Allow backspacing over everything in insert mode

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
set tabstop=8               " one tab = eight spaces
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

"====== Command Definition =============================================== {{{1
"
" Copy specific range to pasteboard, require gpaste
command! -range=% Copy :silent <line1>,<line2>w !tee | gpaste

" View markdown files in its html form
command! MarkdownView :silent %w !markdown | hxclean | elinks -eval 'bind "main" "q" = "really-quit"'

" Open help in a new tab
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'

" Open help in a vertical split window
cnoreabbrev <expr> help getcmdtype() == ":" && getcmdline() == 'help' ? 'vertical topleft help' : 'help'
"
"}}}1

"====== Functionality Enhancement ======================================== {{{1
"
" Autoload files when changed on the disk
set autoread
autocmd VimEnter,BufEnter,CursorHold * if getbufvar(bufnr('%'),'&buftype') == '' | checktime | endif
autocmd FileChangedShell * echo "Warning: File changed on disk"
"
"}}}1

"====== Key Bindings Customization ======================================= {{{1
"
" F2 = Toggle Paste Mode
set pastetoggle=<F2>

" Edit and reload .vimrc file
nmap <silent> <Leader>ev :tabe $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>

" Life saver
nnoremap ; :

" Solve up/down navigation problem
"+ for wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Enable hlsearch
nnoremap / :set hlsearch<CR> /
nnoremap ? :set hlsearch<CR> ?
nnoremap * :set hlsearch<CR> *
nnoremap # :set hlsearch<CR> #

" Clean search
nnoremap <Leader>cs :let @/ = ""<CR>

" Toggle hlsearch
nnoremap <Leader>hl :nohlsearch<CR>

" Window movements
nnoremap <C-h>      <C-w>h
nnoremap <C-l>      <C-w>l
nnoremap <C-j>      <C-w>j
"nnoremap <C-k>      <C-w>k

"autocmd BufEnter * :SignifyToggle

" Cursor movements in insert mode
autocmd BufRead,BufEnter,BufNewFile * if exists("b:loaded_AutoClose") && b:loaded_AutoClose && !exists('b:called_insertmovement') | call <SID>InsertMovement() | endif

func! s:expr_maparg(name,mode)
  let mapdic = {}
  let mapdic = maparg(a:name, a:mode, 0, 1)
  let maprhs = maparg(a:name, a:mode)
  if (l:mapdic['expr'] != 1)
      let maprhs = "'".maprhs."'"
  endif
  return maprhs
endfunc

func! s:InsertMovement()
    let b:called_insertmovement= 1
    exec "inoremap <buffer> <silent> <expr> <C-h> ".s:expr_maparg('<left>', 'i')
    exec "inoremap <buffer> <silent> <expr> <C-l> ".s:expr_maparg('<right>','i')
    exec "inoremap <buffer> <silent> <expr> <C-j> ".s:expr_maparg('<down>', 'i')
"    exec "inoremap <buffer> <silent> <expr> <C-k> ".s:expr_maparg('<up>',   'i')
endfunc

" Window operations
nnoremap <Leader>wo <C-w>o
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>wq <C-w>c
nnoremap <Leader>ww <C-w><C-w>
nnoremap <Leader>wv <C-w>v<C-w>l

map <Leader>sp :set cursorline<CR>:set cursorcolumn<CR>
map <Leader>hp :set nocursorline<CR>:set nocursorcolumn<CR>

" Arrow keys are evil
map <up>    <nop>
map <down>  <nop>
map <left>  <nop>
map <right> <nop>

noremap <silent> <Leader>y :TagbarToggle<CR>

noremap <silent> <Leader>n :NERDTreeTabsToggle<CR>

" Buffer movements
noremap <Leader>hh :MBEbp<CR>
noremap <Leader>ll :MBEbn<CR>
noremap <Leader>jj :MBEbb<CR>
noremap <Leader>kk :MBEbf<CR>

" ,c = Copy
map <Leader>c "+y

" ,v = Paste
map <Leader>v "+gP

" ,U = Delete unwanted empty lines
map <Leader>U :g/^$/d<CR>

" ,T = Delete all the trailing space
map <Leader>T :%s/\s\+$//<CR>

" ,L = Toggle line numbers
map <Leader>L :set invnumber<CR>

" ,R = Convert tabs to spaces
map <Leader>r :set expandtab<CR> :retab!<CR>

" ,r = Convert spaces to tabs
map <Leader>R :set noexpandtab<CR> :retab!<CR>

" ,ct = Builds ctags
map <Leader>ct :! /usr/bin/ctags -R *<CR>

" ,cd = Switch to the directory of the open buffer
map <Leader>cd :cd %:p:h<CR>

" Opens a file with the path of the currently edited file prefixed
" in a buffer in Normal mode
map <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a file with the path of the currently edited file prefixed
" in a new tab in Normal mode
map <Leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Using sudo to save a already opened privileged file
cmap w!! w !sudo tee % >/dev/null

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap
"
"}}}1

if filereadable($HOME.'/.vimrc.local')
    source $HOME/.vimrc.local
endif

" vim: foldenable foldcolumn=1 foldmethod=marker
