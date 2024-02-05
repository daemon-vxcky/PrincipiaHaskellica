main :: IO()

main = do
    putStrLn $ "Enter temperature in degree celsius: "
    celsiusStr <- getLine
    let celsius = read celsiusStr :: Double
    let farenheit = (celsius * 9/5) + 32
    putStrLn ("You entered: " ++ show farenheit ++ " degree farenheit")