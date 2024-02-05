main :: IO ()
main = do
    putStrLn $  "Enter a value in kilometers:"
    kmStr <- getLine
    let km = read kmStr :: Double
        metres = km * 1000
    putStrLn ("You entered: " ++ show metres ++ " metres")
