myinit :: [a]->[a]
myinit [] = []
myinit [x] = []
myinit (x:xs) = x:myinit xs