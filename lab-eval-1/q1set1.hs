{-
Hard code index operator
-}

myind :: Int->[a]->a
myind 0 (x:xs) = x
myind n [] = error "Not enough elements" 
myind n (x:xs)
    | n<0 = error "Negative index"
    | otherwise = myind (n-1) xs
