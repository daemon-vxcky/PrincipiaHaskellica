mymap :: (a->b)->[a]->[b]
mymap f [] = []
mymap f (x:xs) = f x : mymap f (xs)


myfilter :: (a->Bool)->[a]->[a]
myfilter f [] = []
myfilter f (x:xs) = if f x then x : myfilter f xs else myfilter f xs

myEv :: Int->Bool
myEv x = if (x `mod` 2) == 0 then True else False

addX :: Int->Int
addX x = x+1
