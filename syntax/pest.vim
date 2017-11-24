" Comments
syntax keyword pestTodo contained TODO FIXME XXX NOTE
syntax match pestComment "\/\/.*$" contains=celTodo

" Rule names
syntax match pestName "^[a-z_][a-z0-9_]*"

" String types
syntax region pestString start=/"/ end=/"/ oneline contained
syntax region pestStringIcase start=/\^"/ end=/"/ oneline contained
syntax region pestChar start=/'/ end=/'/ oneline contained

" Operators, modifiers, keywords
syntax match pestModifier "\v[_@$!]"
syntax match pestOperator "\v[~|*+?&!]" contained
syntax keyword pestKeyword push contained
syntax keyword pestSpecial whitespace comment any soi eoi pop peek contained

" Rule blocks
syntax region pestBlock start=/{/ end=/}/ fold transparent contains=pestString,pestStringIcase,pestChar,pestOperator,pestKeyword,pestSpecial

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
