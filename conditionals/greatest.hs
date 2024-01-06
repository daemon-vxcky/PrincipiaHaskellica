main :: IO()

main = do
    let n1 = 254
    let n2 = -74

    if n1>n2
        then putStrLn $ show n1 ++ " is greater than " ++ show n2 ++ "."
    else if n1<n2
        then putStrLn $ show n2 ++ " is greater than " ++ show n1 ++ "."
    else
        putStrLn $ show n1 ++ " and " ++ show n2 ++ " are equal."