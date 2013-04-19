Vim-IDE
=======

This is a cleaning up of my personal vim configuration, aims to provide
a good start point for using vim as a major development tool with some
IDE-like features.

It was inspired by the following projects where some tricks and settings
came from.

* [nvie's vimrc](https://github.com/nvie/vimrc)
* [farazdagi's vim-ide](https://github.com/farazdagi/vim-ide)
* [jsuggs's vim-php-ide](https://github.com/jsuggs/vim-php-ide)
* [tlhunter's Vim-PHP-IDE](https://github.com/tlhunter/Vim-PHP-IDE)

Plugins
-------

Plugins are managed through [Vundle][] and placed under `~/.vim/bundle`
directory.

[Vundle]:http://www.vim.org/scripts/script.php?script_id=3458

### Vundle

* [Github Repo](https://github.com/gmarik/vundle)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=3458)

Vundle is short for Vimbundle and is a Vim plugin manager.

### Tagbar

* [Home Page](http://majutsushi.github.com/tagbar/)
* [GitHub Repo](https://github.com/majutsushi/tagbar)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=3465)

Project tags outline with nested scope.

### Tagbar-PHPCtags

* [GitHub Repo](https://github.com/techlivezheng/tagbar-phpctags)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=4125)

Enhanced Tagbar PHP support, written by me.

### The NERD tree

* [GitHub Repo](https://github.com/scrooloose/nerdtree)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=1658)

A tree explorer plugin for navigating the filesystem.

### snipMate

* [GitHub Repo](https://github.com/msanders/snipmate.vim)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=2540)

Insert code snippets.

### Command-T

* [Home Page](https://wincent.com/products/command-t)
* [Official Repo](http://git.wincent.com/command-t.git/)
* [GitHub Mirror](https://github.com/wincent/Command-T)

Quickly locate and open files under current path, require ruby support for vim.

### MiniBufferExplorer

* [Home Page](http://fholgado.com/minibufexpl)
* [GitHub Repo](https://github.com/fholgado/minibufexpl.vim)
* [Vim.org Script (Outdated)](http://www.vim.org/scripts/script.php?script_id=159)

An elegant buffer explorer, make it much more easier working with buffers.

### Repeat

* [GitHub Repo](https://github.com/tpope/vim-repeat)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=2136)

Repeat last plugin command.

### Surround

* [GitHub Repo](https://github.com/tpope/vim-surround)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=1697)

Change code surroundings.

### Bufkill

* [Github Repo](https://github.com/vim-scripts/bufkill.vim)
* [Vim.org.Script](http://www.vim.org/scripts/script.php?script_id=1147)

Delete buffer without losing splited winodw.

### CheckSyntax

* [Github Repo](https://github.com/tomtom/checksyntax_vim)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=1431)

Check for syntax erros when saving a file.

### QuickFixSigns

* [Github Repo](https://github.com/tomtom/quickfixsigns_vim)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=2584)

Mark quickfix & location list items with signs.

### Powerline

* [Github Repo](https://github.com/Lokaltog/vim-powerline)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=3881)

A wonderfull statusline plugin.

### Markdown Syntax

* [Home Page](http://plasticboy.com/markdown-vim-mode/)
* [Github Repo](https://github.com/plasticboy/vim-markdown)

Syntax highlighting for markdown light-weight markup language.

### EasyMotion

* [Github Repo](https://github.com/Lokaltog/vim-easymotion)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=3526)

EasyMotion provides a much simpler way to use some motions in vim.

### Screen

* [Github Repo](https://github.com/ervandew/screen)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=2711)

Simulate a split shell, using gnu screen or tmux, that you can send commands to.

### Vimux

* [Github Repo](https://github.com/benmills/vimux)
* [Vim.org Script](http://www.vim.org/scripts/script.php?script_id=4011)

Effortless vim and tmux interaction.

Installation
------------

The following instructions are only for \*nix platforms. For other platform,
please help yourself.

Before proceeding the following commands, please be sure to backup your
original vim configuration. The original `~/.vimrc` could be save as
`~/.vimrc.local` which will be loaded at the end of the new `~/.vimrc` file.

    git clone git@github.com:techlivezheng/vimrc.git ~/.vim
    ln -s .vim/vimrc .vimrc

Vundle should be installed manually first.

    mkdir ~/.vim/bundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

For the installation of the rest plugins, either launch `vim` and run
`:BundleInstall`, or execute the following command in the terminal.

    vim +BundleInstall +qall

Command-T needs to install a ruby extension.

    cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make

In order to get full experience of Powerline plugin, a patched font should
be placed under ~/.fonts. See [fontpatcher][] page for a guide on how to patch
a font, [Patched Fonts][] page provides a set of pre-patched fonts available
for downloading, a pretty font has been included by default in `~/.vim/misc/`
directory.

[fontpatcher]: https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
[Patched Fonts]: https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts

    cp ~/.vim/misc/VeraMono-Powerline.ttf ~/.fonts

ColorScheme
===========

[Solarized][] is a well designed sixteen color palette suitable for terminal
use, that's the main reason why [vim-colors-solarized][] is my prefered color
scheme. It is the default color scheme for GUI version. For terminal emulators,
in order to get full experience of this great color scheme, a relevant color
palette need to be configured, as well as a proper `$TERM` environmental
variable. After that, by setting `$SOLARIZED_PALETTE` environmental variable to
'dark' or 'light', vim will use relavant solarized color scheme accordlingly.

Let's take gnome-terminal as an example.

First, set `$TERM` variable to 'xterm-16color', `export TERM=xterm-16color`
('xterm-256color' is also good, `export TERM=xterm-256color`).

Second, use [gnome-terminal-colors-solarized][] to configure solarized color
palette for gnome terminal. There are two styles avaliable, dark and light.

At last, set `$SOLARIZED_PALETTE` environmental accordingly, `export
SOLARIZED_PALETTE=dark` or `export SOLARIZED_PALETTE=light`.

For a terminal emulator that can't use solarized color palette but have
256-colors support(`export TERM=xterm-256color`), the vim-colors-solarized
could still be configured working in a compatible mode, all we need to do is
just set `$SOLARIZED_COMPATIBLE` environmental variable
(`export SOLARIZED_COMPATIBLE=TRUE`).

As a fallback, solarized color scheme will still be used for un-configured
8-colors or 16-colors terminal emulator in which it still looks good. Another
color scheme [mustang][] will be used for 256-colors. and [peaksea][] for diff
view.

[Solarized]: http://ethanschoonover.com/solarized
[vim-colors-solarized]: https://github.com/altercation/vim-colors-solarized
[gnome-terminal-colors-solarized]: https://github.com/sigurdga/gnome-terminal-colors-solarized
[mustang][]
[peaksea][]
