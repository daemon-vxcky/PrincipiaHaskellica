main :: IO()
main = do
    putStrLn $ "Enter value for radius: "
    radiusStr <- getLine
    let radius = read radiusStr :: Double
    let area = 4 * pi * (radius**2.0)
    let volume = (4/3) * pi * (radius**3.0)
    putStrLn $ "You entered: " ++ show radius ++ " area: " ++ show area ++ " volume: " ++ show volume
