fibonacci :: Int->Int->Int
fibonacci n 1 = 0
fibonacci n 2 = 1
fibonacci n k = fibonacci n (k-1) + fibonacci n (k-2)


main :: IO()

main = do
    let n = 10
    let i = 7
    let val = fibonacci n i
    putStrLn $ "The " ++ show i ++ "th fibonacci term is : " ++ show val
