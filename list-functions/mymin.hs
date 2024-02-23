checkSmaller :: Int->[Int]->[Int]
checkSmaller n [] = []
checkSmaller n (x:xs) = if n>x then x:checkSmaller n xs else checkSmaller n xs

mymin :: [Int]->Int
mymin [] = error "Empty List"
mymin [x] = x