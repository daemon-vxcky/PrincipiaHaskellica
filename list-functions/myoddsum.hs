oddsum :: [Int]->Int
oddsum [] = 0
oddsum (x:xs) = if odd x then x + oddsum(xs) else oddsum (xs)