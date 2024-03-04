mytail :: [a]->a
mytail [] = error "tail of empty list"
mytail [x] = x
mytail (_:xs) = mytail(xs)

myinit :: [a]->[a]
myinit [] = []
myinit [a] = []
myinit (x:xs) = x:myinit(xs)

mypal :: (Eq a)=>[a]->Bool
mypal [] = True
mypal [x] = True
mypal (x:xs) = if (x == mytail (xs)) then mypal (myinit(xs)) else False