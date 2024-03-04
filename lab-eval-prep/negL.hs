{-
Write a function negateList :: [Int] -> [Int] 
that takes a list of integers and returns a new list 
where each element is negated (multiplied by -1).
-}

negL :: (Int->Int)->[Int]->[Int]
negL f [] = []
negL f (x:xs) = f(x) : negL f (xs)