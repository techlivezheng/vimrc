syntax clear

syn match   messagesBegin       display '^' nextgroup=messagesDate

syn match   messagesDate        display '\a\a\a \a\a\a [ 0-9]\d *' contained nextgroup=messagesTime

syn match   messagesTime        display '\d\d:\d\d:\d\d\s*' contained nextgroup=messagesYear

syn match   messagesYear        display '\d\d\d\d:\s*' contained nextgroup=messagesMsg

syn match   messagesMsg         display '::[^\[]*\s*' contained

syn match   messagesBusy        '\[BUSY\]\s*'
syn match   messagesDone        '\[DONE\]\s*'
syn match   messagesFail        '\[FAIL\]\s*'

hi def link messagesWeek        Constant
hi def link messagesDate        Constant
hi def link messagesTime        Constant
hi def link messagesYear        Constant
hi def link messagesMsg         Type
hi          messagesFail        ctermfg=Red
hi          messagesDone        ctermfg=Green
hi          messagesBusy        ctermfg=Yellow

let b:current_syntax = "bootlog"
