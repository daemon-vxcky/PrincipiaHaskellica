hord :: (Int->Bool)->(Int->Bool)->[Int]->[Bool]
hord f g [] = []
hord f g [x] = f (x) : []
hord f g [x,y] = f x : g y : []
hord f g (x:y:xs) = f x : g y : hord f g xs

mysq :: Int->Int
mysq n = n*n

mucu :: Int->Int
mucu n = n*n*n
