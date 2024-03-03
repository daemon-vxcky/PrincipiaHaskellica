{-
Create a function filterPairs :: [(Int, Int)] -> [(Int, Int)] 
that filters a list of pairs of integers and returns a new list containing 
only those pairs where the first element is less than the second element.
-}

fP :: (Int->Int->Bool)->[(Int,Int)]->[(Int,Int)]
fP f [] = []
fP f ((x,y):t) = if f x(y) then (x,y) : fP f (t) else fP f (t)

myLt :: Int->Int->Bool
myLt x y = x<y