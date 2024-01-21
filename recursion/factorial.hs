factorial :: Int->Int
factorial 0 = 1
factorial n = n * factorial (n-1)

main :: IO()

main = do
    let n = 6
    let val = factorial n
    putStrLn $ "The factorial of: " ++ show n ++ " is: " ++ show val
