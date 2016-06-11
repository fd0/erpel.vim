" Vim syntax file
" Language: Erpel Rule File
" Maintainer: Alexander Neumann <alexander@bumpern.de>

if exists("b:current_syntax")
  finish
endif

syn match erpelAlias "{{[a-zA-Z0-9_-]\+}}"

syn match erpelComment "#.*$"

let b:current_syntax = "erpelrule"

hi def link erpelAlias Identifier
hi def link erpelComment Comment
