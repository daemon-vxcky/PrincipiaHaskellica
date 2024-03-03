--Implement a function evenSquares :: [Int] -> [Int] that takes a 
--list of integers and returns a new list containing the squares 
--of the even numbers from the input list.

esq :: (Int->Bool)->[Int]->[Int]
esq f [] = []
esq f (x:xs) = if f x then x*x : esq f (xs) else esq f (xs)