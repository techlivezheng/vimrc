set guioptions-=T

if filereadable($HOME.'/.vimrc.local')
    source $HOME/.gvimrc.local
endif

" vim: foldenable foldcolumn=1 foldmethod=marker
