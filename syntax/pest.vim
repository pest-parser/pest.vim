syntax keyword pestTodo contained TODO FIXME XXX NOTE
syntax match pestComment "\/\/.*$" contains=celTodo

syntax keyword pestModifier _ @ $ !

highlight default link pestTodo Todo
highlight default link pestComment Comment
highlight default link pestModifier Operator
