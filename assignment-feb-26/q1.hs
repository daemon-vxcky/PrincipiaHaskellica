lastElement :: [a]->a
lastElement [] = error "Empty List"
lastElement (x:[]) = x
lastElement(x:xs) = lastElement xs

firstElement :: [a]->a
firstElement [] = error "Empty List"
firstElement (x:_) = x

startEnd :: [a]->(a,a)
startEnd [] = error "Empty List"
startEnd [x] = (x,x)
startEnd(x:xs) = (x,lastElement xs)