syntax clear

syn match   messagesBegin       display '^' nextgroup=messagesPID

syn match   messagesPID         display '\d*\s*' contained nextgroup=messagesTime

syn match   messagesTime        display '\(\d\|\d\d\):\d\d:\d\d\s*' contained nextgroup=messagesWord

syn match   messagesWord        display 'mysqld_safe.*$' contained

syn match   messagesNote        '\[Note\].*$'

syn match   messagesError       '\(\[ERROR\]\|InnoDB: Error\).*$'

syn region  messagesErrorRegion start='\[ERROR\]' end='\(^$\|^\d*\s*[ 0-9]\d:\d\d:\d\d\s*\)' contains=messagesPID 

hi def link messagesPID         Constant
hi def link messagesTime        PreProc
hi def link messagesWord        Type
hi          messagesNote        ctermfg=Blue
hi          messagesError       ctermfg=Red
hi          messagesErrorRegion ctermfg=Red

let b:current_syntax = "mysqllog"
