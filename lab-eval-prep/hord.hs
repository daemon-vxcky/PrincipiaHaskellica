myf :: (Int->Int) -> [Int]->[Int]

myf f [] = []
myf f xs = [f x | x<-xs , f x >20]