" Vim syntax file
" Language: PIE

if exists("b:current_syntax")
  finish
endif

syn iskeyword @,48-57,192-255,_,-

syn keyword basicLanguageKeywords U which-Nat iter-Nat rec-Nat ind-Nat Π λ Pi lambda quote Atom car cdr cons Σ Sigma Pair Trivial sole List :: nil rec-List ind-List Absurd ind-Absurd = same replace trans cong symm ind-= Vec vecnil vec:: head tail ind-Vec Either left right ind-Either the check-same

syn keyword todoKeywords TODO
syn match numerical "\v<Nat>"
syn keyword numerical zero add1
syn keyword function -> →

syn keyword claimAndDefine claim define nextgroup=aDefinitionName skipwhite
syn match aDefinitionName '\v[a-zA-Z-]+' contained

syn match anAtom '\v\'[a-z-]+'
syn match languageDefinition '\v#.+'

let b:current_syntax = "pie"

hi def link languageDefinition Comment
hi def link todoKeywords   Todo
hi def link basicLanguageKeywords  Statement
hi def link numerical  Number
hi def link function  Function
hi def link anAtom Special
hi def link claimAndDefine Special
hi def link aDefinitionName Structure
