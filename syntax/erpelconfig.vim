" Vim syntax file
" Language: Erpel Rule File
" Maintainer: Alexander Neumann <alexander@bumpern.de>

if exists("b:current_syntax")
  finish
endif

syn keyword erpelGlobal rules_dir prefix

syn match erpelComment "#.*$"

let b:current_syntax = "erpelrule"

hi def link erpelGlobal Keyword
hi def link erpelComment Comment
