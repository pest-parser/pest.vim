" Comments
syntax keyword pestTodo contained TODO FIXME XXX NOTE
syntax match pestComment "\/\/.*$" contains=celTodo

" Rule names
syntax match pestName "^[a-z_][a-z0-9_]*"

" String types
syntax region pestString start=/"/ skip=/\\\\\|\\"/ end=/"/ oneline contained
syntax region pestStringIcase start=/\^"/ skip=/\\\\\|\\"/ end=/"/ oneline contained
syntax region pestChar start=/'/ end=/'/ oneline contained

" Operators, modifiers, keywords
syntax match pestModifier "\v[_@$!]"
syntax match pestOperator "\v[~|*+?&!]" contained
syntax keyword pestKeyword PUSH POP POP_ALL PEEK PEEK_ALL DROP contained
syntax keyword pestSpecial WHITESPACE COMMENT ANY SOI EOI ASCII_DIGIT ASCII_NONZERO_DIGIT ASCII_BIN_DIGIT ASCII_OCT_DIGIT ASCII_HEX_DIGIT
      \ ASCII_ALPHA_LOWER ASCII_ALPHA_UPPER ASCII_ALPHA ASCII_ALPHANUMERIC ASCII NEWLINE
syntax keyword pestForbidden abstract alignof as become box break const continue crate do else enum extern false
      \ final fn for if impl in let loop macro match mod move mut offsetof override priv proc pure pub ref return
      \ Self self sizeof static struct super trait true type typeof unsafe unsized use virtual where while yield 

" Rule blocks
syntax region pestBlock start=/{/ end=/}/ fold transparent contains=pestString,pestStringIcase,pestChar,pestOperator,pestKeyword,pestSpecial,pestForbidden,pestComment
syntax region pestRule start=/^/ end=/ / fold transparent contains=pestName,pestForbidden,pestComment

highlight default link pestTodo Todo
highlight default link pestComment Comment
highlight default link pestString String
highlight default link pestStringIcase String
highlight default link pestChar Character
highlight default link pestName Identifier
highlight default link pestModifier Operator
highlight default link pestOperator Operator
highlight default link pestKeyword Keyword
highlight default link pestSpecial Type
highlight default link pestForbidden Error
