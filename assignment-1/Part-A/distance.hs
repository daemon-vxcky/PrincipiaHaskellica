main = do
    putStrLn $ "Enter initial velocity: "
    input <- getLine
    let u = read input :: Double
    putStrLn $ "Enter acceleration: "
    input <- getLine
    let a = read input :: Double
    putStrLn $ "Enter time: "
    input <- getLine
    let t = read input :: Double
    let s = (u*t) + (0.5*a*t*t)
    putStrLn $ "Distance travelled: " ++ show s