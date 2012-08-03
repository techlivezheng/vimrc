" Author:       Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Maintainer:   Techlive Zheng <techlivezheng@gmail.com>
" Last Change:  August 03 2012

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mustang"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine   guifg=none    guibg=#2d2d2d gui=none   ctermfg=none ctermbg=236  cterm=none
  hi ColorColumn  guifg=none    guibg=#2d2d2d gui=none   ctermfg=none ctermbg=236  cterm=none
  hi CursorColumn guifg=none    guibg=#2d2d2d gui=none   ctermfg=none ctermbg=236  cterm=none
  hi Pmenu        guifg=#ffffff guibg=#444444 gui=none   ctermfg=255  ctermbg=238  cterm=none
  hi PmenuSel     guifg=#000000 guibg=#b1d631 gui=none   ctermfg=0    ctermbg=148  cterm=none
  hi MatchParen   guifg=#d0ffc0 guibg=#2f2f2f gui=bold   ctermfg=157  ctermbg=237  cterm=bold
endif

" General colors
hi Cursor         guifg=none    guibg=#626262 gui=none   ctermfg=none ctermbg=241  cterm=none
hi Normal         guifg=#e2e2e5 guibg=#202020 gui=none   ctermfg=253  ctermbg=234  cterm=none
hi NonText        guifg=#808080 guibg=#303030 gui=none   ctermfg=244  ctermbg=235  cterm=none
hi LineNr         guifg=#808080 guibg=#000000 gui=none   ctermfg=244  ctermbg=232  cterm=none
hi StatusLine     guifg=#d3d3d5 guibg=#444444 gui=italic ctermfg=253  ctermbg=238  cterm=italic
hi StatusLineNC   guifg=#939395 guibg=#444444 gui=none   ctermfg=246  ctermbg=238  cterm=none
hi VertSplit      guifg=#444444 guibg=#444444 gui=none   ctermfg=238  ctermbg=238  cterm=none
hi FoldColumn     guifg=#808080 guibg=#000000 gui=none   ctermfg=244  ctermbg=232  cterm=none
hi Folded         guifg=#a0a8b0 guibg=#384048 gui=none   ctermfg=248  ctermbg=4    cterm=none
hi Title          guifg=#f6f3e8 guibg=none    gui=bold   ctermfg=254  ctermbg=none cterm=bold
hi Visual         guifg=#faf4c6 guibg=#3c414c gui=none   ctermfg=254  ctermbg=4    cterm=none
hi SpecialKey     guifg=#808080 guibg=#343434 gui=none   ctermfg=244  ctermbg=236  cterm=none

" Syntax highlighting
hi Comment        guifg=#808080 guibg=none    gui=italic ctermfg=244  ctermbg=none cterm=none
hi Todo           guifg=#8f8f8f guibg=none    gui=italic ctermfg=245  ctermbg=none cterm=none
hi Boolean        guifg=#b1d631 guibg=none    gui=none   ctermfg=148  ctermbg=none cterm=none
hi String         guifg=#b1d631 guibg=none    gui=italic ctermfg=148  ctermbg=none cterm=none
hi Identifier     guifg=#b1d631 guibg=none    gui=none   ctermfg=148  ctermbg=none cterm=none
hi Function       guifg=#ffffff guibg=none    gui=bold   ctermfg=255  ctermbg=none cterm=none
hi Type           guifg=#7e8aa2 guibg=none    gui=none   ctermfg=103  ctermbg=none cterm=none
hi Statement      guifg=#7e8aa2 guibg=none    gui=none   ctermfg=103  ctermbg=none cterm=none
hi Keyword        guifg=#ff9800 guibg=none    gui=none   ctermfg=208  ctermbg=none cterm=none
hi Constant       guifg=#ff9800 guibg=none    gui=none   ctermfg=208  ctermbg=none cterm=none
hi Number         guifg=#ff9800 guibg=none    gui=none   ctermfg=208  ctermbg=none cterm=none
hi Special        guifg=#ff9800 guibg=none    gui=none   ctermfg=208  ctermbg=none cterm=none
hi PreProc        guifg=#faf4c6 guibg=none    gui=none   ctermfg=230  ctermbg=none cterm=none
hi Todo           guifg=#000000 guibg=#e6ea50 gui=italic ctermfg=none ctermbg=none cterm=none

" NERDTree colors
hi NERDTreeUp     guifg=#5b646d ctermfg=62
hi NERDTreeDir    guifg=#a5aebe ctermfg=111
hi NERDTreeFile   guifg=#cdd2db ctermfg=250

hi def link NERDTreeCWD String
hi def link NERDTreePart String
hi def link NERDTreeOpenable String
hi def link NERDTreeCloseable NERDTreeOpenable
