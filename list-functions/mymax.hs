checkGreater :: Int->[Int]->[Int]
checkGreater x [] = []
checkGreater x (y:ys) = if x<y then y:checkGreater x (ys) else x:checkGreater x (ys)

mymax :: [Int]->Int
mymax [] = error "Empty List"
mymax [x] = x
mymax (x:xs) = mymax (checkGreater x xs)