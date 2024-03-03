le :: [a]->a
le [] = error "Empty list"
le [x] = x
le (x:xs) = le xs

myinit :: [a]->[a]
myinit []  = []
myinit [x] = []
myinit []

myk :: Int->[a]->a
myk 1 (x:xs) = le (x:xs)
myk n [] = error "Index out of range"
