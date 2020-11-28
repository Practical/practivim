" Vim syntax file
" Language: Practical
" Maintainer: Shachar Shemesh
" Latest Revision: 21 November 2020

if exists("b:current_syntax")
  finish
endif

syn keyword keyword def decl expect cast if else ref
syn keyword type U8 U16 U32 U64 S8 S16 S32 S64 C8 C16 C32 Bool Void

" Comments
"
syn region prNestedComment	start="/\*"  end="\*/" contains=prNestedComment,@Spell fold
syn match  prLineComment	"//.*" contains=@Spell

" Block
"
syn region prBlock	start="{" end="}" fold transparent

" Literals
syn match prDecimal     display "\<\d[0-9_]*\>"
syn keyword prBoolean   true false
syn keyword prNull      null

" Legal characters to have after the backslash
let s:legalBackslashes = "\\\\0abtnvfrx\"?'"
let s:stringBody = '\([^\\"]\|\\[' . s:legalBackslashes . ']\)*'
execute 'syn match prString      display @"' . s:stringBody . '"@'

" String that contains newline is bad
syn match prBadString display @"\([^\\"]\|\\.\)*$@
" String that contains an unauthorized backslash character is bad
execute 'syn match prBadString   display @"' . s:stringBody . '\\[^' . s:legalBackslashes . ']' . '\([^\\"]\|\\.\)*' . '"@'


hi def link prNestedComment     Comment
hi def link prLineComment       Comment
hi def link prDecimal           Number
hi def link prBoolean           Boolean
hi def link prNull              Constant
hi def link prString            String
hi def link prBadString         Error
