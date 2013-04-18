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

Plugins
-------

Plugins are managed and autoloaded by [Vundle][], and placed under
`~/.vim/bundle` directory.

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

Installation
------------

The following instructions are only for \*nix platforms, as for the others,
please help yourself.

Before proceeding the following commands, please be sure to backup your
original vim configuration. The original `~/.vimrc` could be save as
`~/.vimrc.local` which will be automatically loaded at the end of the
`~/.vimrc` file.

    git clone git@github.com:techlivezheng/vimrc.git ~/.vim
    ln -s .vim/vimrc .vimrc

'Vundle' plugin should be installed manually first, then it will handle the
installation of the rest plugins.

    mkdir ~/.vim/bundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

For the rest plugins, either launch `vim` and run `:BundleInstall`, or execute
the following command in cli.

    vim +BundleInstall +qall

The ruby extension for Command-T must be build first.

    cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make

In order to get full experience of Vim Powerline plugin, a patched font should
be placed under ~/.fonts. See [fontpatcher][] page for a guide on how to patch
a font, [Patched Fonts][] page provides a set of pre-patched fonts available
for downloading, a pretty font has been shipped along with us in misc/ directory.

[fontpatcher]: https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
[Patched Fonts]: https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts

    cp ~/.vim/misc/VeraMono-Powerline.ttf ~/.fonts

ColorScheme
===========

The [Solarized][] colorscheme has been used as major colorscheme. By default,
if vim was not started in a gui, the 8-color fallback mode which Solarized
works well without extra attention will be used, but in order to get a full
experience of the greate Solarized colorscheme, it is recommended to set a
proper `$TERM` environmental variable as well as the needed 'Solarized Color
Palette' with `$SOLARIZED_PALETTE` environmental variable accordingly if in a
terminal emulator.

We use a gnome-terminal as example.

First, use [gnome-terminal-colors-solarized][] to customize the terminal color
palette for solarized colors. There are two color styles avaliable, dark and
light, and set `$SOLARIZED_PALETTE` accordingly.

    export SOLARIZED_PALETTE=dark

or

    export SOLARIZED_PALETTE=light

Second, set a proper `$TERM` variable, both 'xterm-16color' and
'xterm-256color' are good.

    export TERM=xterm-16color

or

    export TERM=xterm-256color

If you are in a 256 color terminal and won't or can't get Solarized Color
Palette set, then, Solarized could be configured to run in a 256 color
compatiable mode by having following settings in `~/.vimrc.local`.

    let g:solarized_termcolors=256
    set background=dark
    colorscheme solarized

Otherwise, without `$SOLARZIED_PALETTE` set in a 256 color terminal, a well
designed 256 colorscheme 'mustang' will be used instead.

For diff view, a better colorscheme 'peaksea' is beens used.

[Solarized]: http://ethanschoonover.com/solarized
[gnome-terminal-colors-solarized]: https://github.com/sigurdga/gnome-terminal-colors-solarized
