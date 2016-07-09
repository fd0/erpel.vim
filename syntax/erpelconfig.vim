" Vim syntax file
" Language: Erpel Rule File
" Maintainer: Alexander Neumann <alexander@bumpern.de>

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "erpelconfig"

syn keyword erpelKeywords rules_dir state_dir

syn match erpelComment "\v#.*$"
syn match erpelAssignment "\v\="

syn match erpelString '\v"[^"]*"'
syn match erpelString "\v'[^']*'"
syn match erpelString '\v`[^`]*`'

syn region erpelFieldDefinition start='field ' end='}' nextgroup=erpelField contains=erpelField,erpelFieldKeywords,erpelFieldValue,erpelComment skipwhite transparent

syn keyword erpelField field nextgroup=erpelFieldName skipwhite contained
syn match erpelFieldName '\v[a-zA-Z0-9._-]+' nextgroup=erpelFieldValue contained skipwhite contained
syn keyword erpelFieldKeywords template pattern samples contained
syn match erpelFieldValue '\v"[^"]*"' contained
syn match erpelFieldValue "\v'[^']*'" contained
syn match erpelFieldValue '\v`[^`]*`' contained

hi def link erpelFieldKeywords Keyword
hi def link erpelField Keyword
hi def link erpelFieldName Label
hi def link erpelFieldValue String


hi def link erpelKeywords          Keyword

hi def link erpelString            String

hi def link erpelComment           Comment
hi def link erpelAssignment        Operator
