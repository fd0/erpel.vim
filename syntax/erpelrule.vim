" Vim syntax file
" Language: Erpel Rule File
" Maintainer: Alexander Neumann <alexander@bumpern.de>

if exists("b:current_syntax")
  finish
endif

syn match erpelAliasReference "\v\{\{[a-zA-Z0-9_-]+\}\}"
syn match erpelComment "\v#.*$"

syn region erpelCharClass start='\v[^\\]\zs\[' skip='\v\\.' end='\v[^\\]\zs\]' contains=erpelOp

syn match erpelOp "\v[^\\]\zs\("
syn match erpelOp "\v[^\\]\zs\)"
syn match erpelOp "\v[^\\]\zs\\[a-zA-Z][+*?]?"
syn match erpelOp "\v[^\\]\zs\."

let b:current_syntax = "erpelrule"

hi def link erpelComment Comment
hi def link erpelAliasReference  Identifier
hi def link erpelCharClass Character
hi def link erpelOp Operator
hi def link erpelNonOp Text
