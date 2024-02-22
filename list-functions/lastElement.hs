lastel :: [a]->a
lastel [] = error "Empty List"
lastel [x] = x
lastel (x:xs) = lastel xs