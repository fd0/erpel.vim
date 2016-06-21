" Vim syntax file
" Language: Erpel Rule File
" Maintainer: Alexander Neumann <alexander@bumpern.de>

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "erpelconfig"

syn keyword erpelKeywords rules_dir

syn match erpelComment "\v#.*$"
syn match erpelAssignment "\v\="

syn match erpelString '\v"[^"]*"'
syn match erpelString "\v'[^']*'"
syn match erpelString '\v`[^`]*`'


hi def link erpelKeywords          Keyword

hi def link erpelString            String

hi def link erpelComment           Comment
hi def link erpelAssignment        Operator
