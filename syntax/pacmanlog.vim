" Vim syntax file
" FileType:     pacman.log

syntax clear
syntax case ignore

syn match pacmanlogHeader       /\v^\[[^]]+\](\s\[[^]]+\])?/
syn match pacmanlogError        /\v(\]\s)@<=ERROR:.*$/
syn match pacmanlogWarning      /\v(\]\s)@<=WARNING:.*$/
syn match pacmanlogRunning      /\v(\]\s)@<=Running.*$/
syn match pacmanlogRemoved      /\v(\]\s)@<=removed\s\S+/
syn match pacmanlogUpgraded     /\v(\]\s)@<=upgraded\s\S+/
syn match pacmanlogInstalled    /\v(\]\s)@<=installed\s\S+/
syn match pacmanlogDowngraded   /\v(\]\s)@<=downgraded\s\S+/

hi      pacmanlogHeader     ctermfg=Cyan
hi      pacmanlogError      ctermfg=DarkRed
hi      pacmanlogWarning    ctermfg=DarkYellow
hi      pacmanlogRunning    ctermfg=Cyan
hi      pacmanlogRemoved    ctermfg=Red
hi      pacmanlogUpgraded   ctermfg=Yellow
hi      pacmanlogInstalled  ctermfg=Green
hi      pacmanlogDowngraded ctermfg=Blue

let b:current_syntax = "pacmanlog"
