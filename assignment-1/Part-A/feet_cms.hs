main :: IO()

main = do
    putStrLn $ "Enter a value in feet: "
    feetStr <- getLine
    let feet = read feetStr :: Double
    let centimetres = feet * 30.48
    putStrLn $ "You entered: " ++ show centimetres ++ " centimetres"
