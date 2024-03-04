--Write a function addLists :: [Int] -> [Int] -> [Int] that takes 
--two lists of integers and returns a new list where each element 
--is the sum of the corresponding elements from the input lists.

adL :: (Int->Int->Int)->[Int]->[Int]->[Int]
adL f [] _ = []
adL f _ [] = []
adL f (x:xs) (y:ys) = f x (y) : adL f (xs) (ys)
{-
ghci> adL (+) [1,2,3,4,5] [1,2,3,5,6]
[2,4,6,9,11]
ghci> adL (+) [1,2,3,4,5] [1,2,3,5]  
[2,4,6,9]
-}