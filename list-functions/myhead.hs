myhead :: [a]->a
myhead [] = error "empty list"
myhead (x:_) = x