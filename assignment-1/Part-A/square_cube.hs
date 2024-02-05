main :: IO()
main = do
    putStrLn $ "Enter a number: "
    numberStr <- getLine
    let number = read numberStr :: Double
    let square = number * number
    let cube = number * number * number
    putStrLn $ "You entered: " ++ show number ++ " square: " ++ show square ++ " cube: " ++ show cube

    let sqrt = number ** 0.5
    putStrLn $ "You entered: " ++ show number ++ " square root: " ++ show sqrt