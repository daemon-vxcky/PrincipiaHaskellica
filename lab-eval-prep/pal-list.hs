le :: Eq a => [a] -> a
le [] = error "Empty list"
le [x] = x
le (x:xs) = le xs

myinit :: [a] -> [a]
myinit [] = []
myinit [x] = []
myinit (x:xs) = x : myinit xs

mypal :: Eq a => [a] -> Bool
mypal [] = True
mypal [x] = True
mypal (x:xs) = if x == le xs then mypal (myinit xs) else False
