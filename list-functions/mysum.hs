mysum :: [Int]->Int
mysum [] = 0
mysum (x:xs) = x + mysum xs