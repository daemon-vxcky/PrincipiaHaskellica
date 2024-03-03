-- Define a function to reverse a list in Haskell.

mytail :: [a]->a
mytail [] = error "tail of empty list"
mytail [x] = x
mytail (_:xs) = mytail(xs)

myinit :: [a]->[a]
myinit [] = []
myinit [a] = []
myinit (x:xs) = x:myinit(xs)

myrev :: [a]->[a]
myrev [] = []
myrev [a] = [a]
myrev(x:xs) = mytail(xs) : myrev(myinit(x:xs))