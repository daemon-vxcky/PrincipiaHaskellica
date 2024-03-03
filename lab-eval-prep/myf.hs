myf :: (Int->Bool) -> [Int]->[Int]
myf f [] = []
myf f xs = [x | x <- xs, f x, x>10]