Vim-IDE
=======

This is a cleaning up of my personal vim configuration, intend to provide
a good start point for using vim as a major development tool with some IDE
like features.

This was inspired by the following projects where some tricks and settings
came from.

* [nvie's vimrc](https://github.com/nvie/vimrc)
* [farazdagi's vim-ide](https://github.com/farazdagi/vim-ide)
* [jsuggs's vim-php-ide](https://github.com/jsuggs/vim-php-ide)
* [tlhunter's Vim-PHP-IDE](https://github.com/tlhunter/Vim-PHP-IDE)

Installation
------------

The following instructions are only for \*nix platforms, as for the others,
please help yourself.

Before proceeding the following commands, please be sure to backup your
original vim configuration. The original ~/.vimrc could be save as
~/.vimrc\_local which will be automatically loaded at the end of the
.vimrc file.

    git clone git@github.com:techlivezheng/Vim-IDE.git ~/.vim
    ln -s .vim/vimrc .vimrc
