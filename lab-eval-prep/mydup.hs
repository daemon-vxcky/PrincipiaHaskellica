ismem :: Eq a => a->[a]->Bool
ismem y [] = False
ismem y (x:xs) = if y==x then True else ismem y (xs)

mydup :: Eq a => [a]->[a]
mydup [] = []
mydup (x:xs) = if ismem x (xs) then mydup xs else x:mydup (xs)