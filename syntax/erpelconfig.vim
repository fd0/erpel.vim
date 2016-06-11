" Vim syntax file
" Language: Erpel Rule File
" Maintainer: Alexander Neumann <alexander@bumpern.de>

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "erpelrule"

syn keyword erpelKeywords rules_dir prefix nextgroup=erpelValue

syn match erpelValue '.*$' contained contains=erpelAliasReference

syn match erpelComment "\v#.*$"
syn match erpelAssignment "\v\="

" syn match erpelValue ".*$" contained contains=erpelAliasReference

syn region erpelSecAliases start='aliases {' end='^\s*}\s*$' contains=erpelAliasName,erpelAliasEquals,erpelAliasValu,erpelComment transparent

syn match erpelAliasName '^\s*\w\+' contained nextgroup=erpelAliasEquals
syn match erpelAliasEquals '=' contained nextgroup=erpelAliasValue
syn match erpelAliasValue '.*$' contained contains=erpelAliasReference

syn match erpelAliasReference "{{[a-zA-Z0-9_-]\+}}" contained



hi def link erpelKeywords          Keyword

hi def link erpelValue             String

hi def link erpelComment           Comment
hi def link erpelAssignment        Operator

hi def link erpelAliasName       Identifier
hi def link erpelAliasEquals     Operator
hi def link erpelAliasValue      Comment
hi def link erpelAliasReference  Identifier
