lastel :: [a]->a
lastel [] = error "Empty List"
lastel [x] = x
lastel (x:xs) = lastel xs

myinit :: [a]->[a]
myinit [] = []
myinit [x] = []
myinit (x:xs) = x:myinit xs

myrev :: [a]->[a]
myrev [] = []
myrev [x] = [x]
myrev (x:xs) = lastel (x:xs) : myrev(myinit(x:xs))