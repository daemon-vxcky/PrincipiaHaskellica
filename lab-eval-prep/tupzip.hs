tupzip :: [a]->[b]->[(a,b)]
tupzip [] _ = []
tupzip _ [] = []
tupzip (x:xs) (y:ys) = (x,y): tupzip xs (ys)