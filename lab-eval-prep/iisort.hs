insert :: Int->[Int]->[Int]
insert x [] = [x]
insert x(y:ys) = if x<y then x:y:ys else y: insert x (ys) 

isort :: [Int]->[Int]
isort [] = []
isort(x:xs) = insert x (isort xs) 