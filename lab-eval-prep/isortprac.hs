insert :: Int->[Int]->[Int]
insert n [] = [n]
insert n (x:xs) = if n<x then n:x:xs else x:insert n xs

isort :: [Int]->[Int]
isort [] = []
isort (x:xs) = insert x (isort xs)