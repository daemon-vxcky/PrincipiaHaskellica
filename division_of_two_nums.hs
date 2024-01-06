main :: IO()

main = do
    let n1 = 10
    let n2 = 4

    let quotient = n1 `div` n2
    let remainder = n1 `mod` n2
    putStrLn $ " The quotient of " ++ show n1 ++ " and " ++ show n2 ++ " is " ++ show quotient ++ "."