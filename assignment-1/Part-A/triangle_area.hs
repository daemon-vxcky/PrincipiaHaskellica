main = do
    putStrLn $ "Enter side 1: "
    side1Str <-getLine
    putStrLn $ "Enter side 2: "
    side2Str <-getLine
    putStrLn $ "Enter side 3: "
    side3Str <-getLine
    let side1 = read side1Str::Double
    let side2 = read side2Str::Double
    let side3 = read side3Str::Double

    let s = (side1 + side2 + side3)/2
    let area = sqrt(s*(s-side1)*(s-side2)*(s-side3))
    putStrLn $ "You entered: " ++ show side1 ++ " " ++ show side2 ++ " " ++ show side3 ++ " area: " ++ show area