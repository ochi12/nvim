" syntax hightlighting for 16 bit x86 assembly

set syntax=asm

syn match regs /\c\<[a-d]\(x\|h\|l\)\|si\|di/
syn match comm /;.*/
syn match label /[^ ]*:/
syn match seg   /\c\.[a-z]*/
syn match const /\c[0-9a-f]\+h\@=/
syn match const2 /\<[0-9]\+\>/ 

hi def link regs Type
hi def link comm Comment
hi def link label Statement
hi def link seg PreProc
hi def link const Constant
hi def link const2 Constant

highlight link String String
