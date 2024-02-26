myhead :: [a]->a
myhead [] = error "empty list"
myhead (x:_) = x

volume :: [Double]->String
volume [] = error "List is empty"
volume [l,b,h] = show (l*b*h) ++ "in^3" 