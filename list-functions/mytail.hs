mytail :: [a]->[a]
mytail [] = error "empty list"
mytail (_:xs) = xs