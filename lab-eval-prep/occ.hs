countocc :: Int->[Int]-> Int
countocc _ [] = 0
countocc n (x:xs) | n == x = 1 + countocc n xs | otherwise = countocc n xs

main :: IO()
main = do
    putStrLn "Enter a number: "
    input <- getLine
    let n1 = read input::Int
    let n2 = [1,2,3,4,5,6,7,1,2,3,1,3]
    let result = countocc n1 n2
    putStrLn $ "The number of times " ++ show(n1) ++ " occurs in the list is: " ++ show(result)
