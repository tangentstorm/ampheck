#lang brag
gram : /"grammar" IDENT def* /"end"
def  : IDENT /":" pat /";"
@pat : alt
alt  : seq (/"|" seq)*
seq  : post+
@post: opt | rep | orp | zap | pre
opt  : pre /"?"
rep  : pre /"+"
orp  : pre /"*"
zap  : pre /"~"
atr  : pre /"@" IDENT
@pre : tag | not | prim
tag  : /"^" prim
not  : /"!" prim
@prim: "(" pat ")" | lit | any | ref
any  : /"."
lit  : LIT
end  : "<eof>"
nil  : "_"
chr  : CHAR
ref  : IDENT
