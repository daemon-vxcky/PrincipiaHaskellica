mymax :: [Int]->Int
mymax [] = error "Empty List"
mymax [x] = x
mymax (x:xs) = if x>mymax xs then x else mymax xs

mymin :: [Int]->Int
mymin [] = error "Empty List"
mymin [x] = x
mymin (x:xs) = if x<mymin xs then x else mymin xs

reach :: [Int]->IO()
reach [] = error "Empty List"
reach (xs) = do
    let maxele = mymax xs
    let minele = mymin xs
    let diff = maxele - minele
    putStrLn $ "The absolute difference between the elements is " ++ show diff