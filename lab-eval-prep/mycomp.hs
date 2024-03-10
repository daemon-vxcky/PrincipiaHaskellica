myc :: (Ord a)=>[a]->[a]->Bool
myc x [] = True
myc [] y = False
myc [x] [y] = if (x>y) then True else False
myc (x:xs) (y:ys) 
    | x>y = True
    | x==y = myc xs ys
    | otherwise = False