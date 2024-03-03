-- Write a Haskell function to flatten a list of lists into a single list.
myflat :: [[Int]]->[Int]
myflat [] = []
myflat (x:xs) = x ++ myflat(xs)