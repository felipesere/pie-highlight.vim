" Vim indent file
" Language:     Pie
"
" Inspired by https://github.com/guns/vim-clojure-static
" Author:       Meikel Brandmeyer <mb@kotka.de>
" URL:          http://kotka.de/projects/clojure/vimclojure.html
" Maintainer:   Sung Pae <self@sungpae.com>
" URL:          https://github.com/guns/vim-clojure-static

if exists("b:did_indent")
	finish
endif
let b:did_indent = 1

let s:save_cpo = &cpo
set cpo&vim

let b:undo_indent = 'setlocal autoindent< smartindent< expandtab< softtabstop< shiftwidth< indentexpr< indentkeys<'

setlocal autoindent smartindent
setlocal softtabstop=2 shiftwidth=2 expandtab
setlocal indentkeys=!,o,O

setlocal indentexpr=
setlocal lisp
setlocal lispwords+=claim,λ,Π,Σ,=,cons,::,which-Nat,iter-Nat,rec-Nat,ind-Nat,rec-List,ind-List,vec::,cong,replace,ind-Vec,ind-Either,left,right
let b:undo_indent .= '| setlocal lisp<'
