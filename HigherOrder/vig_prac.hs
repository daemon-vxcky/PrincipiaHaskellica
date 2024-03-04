{-
Write a function addLists :: [Int] -> [Int] -> [Int] that takes two 
lists of integers and returns a new list where each element is the sum of the 
corresponding elements from the input lists.
-}

adL :: (Int->Int->Int)->[Int]->[Int]->[Int]
adL f [] _ = []
adL f _ [] = []
adL f (x:xs) (y:ys) = f x (y) : adL f (xs) (ys)

{-Implement a function evenSquares :: [Int] -> [Int] that takes a list of 
    integers and returns a new list containing the squares of the 
    even numbers from the input list.
-}

adEv :: (Int->Bool)->[Int]->[Int]
adEv f [] = []
adEv f (x:xs) = if f x then x*x : adEv f (xs) else adEv f (xs)

myEv :: Int->Bool
myEv n = if n `mod` 2 == 0 then True else False