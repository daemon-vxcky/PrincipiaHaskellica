main :: IO()

main = do
    putStrLn "Enter a number:   "
    input <- getLine
    let n1 = read input :: Int
    putStrLn "Enter another number: "
    input <- getLine
    let n2 = read input :: Int
    
    putStrLn $ "The sum of numbers is: " ++ show (n1+n2)