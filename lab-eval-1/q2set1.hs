{-
Return the elements of a list when the condition of the higher order function is satisfied,
the function is higher order and the elements of the listwill be returned when the condition is satisfied
for the first time in the list
-}

myfilter :: (a->Bool)->[a]->[a]
myfilter f [] =[]
myfilter f (x:xs) = if f x then x:xs else myfilter f xs
