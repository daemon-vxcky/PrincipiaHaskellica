main :: IO()

main = do
    let n1 = 10
    let n2 = 20

    let product = n1*n2
    putStrLn $ " The product of " ++ show n1 ++ " and " ++ show n2 ++ " is " ++ show product ++ "."