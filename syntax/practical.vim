" Vim syntax file
" Language: Practical
" Maintainer: Shachar Shemesh
" Latest Revision: 7 August 2020

if exists("b:current_syntax")
  finish
endif

syn keyword keyword def expect if else
syn keyword type U8 U16 U32 U64 S8 S16 S32 S64 Bool Void
syn keyword Boolean true false
