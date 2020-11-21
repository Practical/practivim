" Vim syntax file
" Language: Practical
" Maintainer: Shachar Shemesh
" Latest Revision: 7 August 2020

if exists("b:current_syntax")
  finish
endif

syn keyword keyword def expect if else ref
syn keyword type U8 U16 U32 U64 S8 S16 S32 S64 Bool Void

" Comments
"
syn region prNestedComment	start="/\*"  end="\*/" contains=prNestedComment,@Spell fold
syn match  prLineComment	"//.*" contains=@Spell

" Block
"
syn region prBlock	start="{" end="}" fold transparent

" Literals
syn match prDec         display "\<\d[0-9_]*\(u\=l\=\|l\=u\=\)\>"
syn keyword prBoolean   true false


hi def link prNestedComment     Comment
hi def link prLineComment       Comment
hi def link prDec               Number
hi def link prBoolean           Boolean
