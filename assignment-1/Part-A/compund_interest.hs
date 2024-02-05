calculateCompoundInterest :: Double -> Double -> Double -> Double
calculateCompoundInterest principal rate time = principal * (1 + rate/100) ** time

main :: IO ()
main = do
    putStrLn "Enter principal amount:"
    principalInput <- getLine
    let principal = read principalInput ::Double 
    putStrLn "Enter interest rate:"
    rateInput <- getLine
    let rate = read rateInput :: Double

    putStrLn "Enter time (in years):"
    timeInput <- getLine
    let time = read timeInput :: Double

    let interest = calculateCompoundInterest principal rate time

    putStrLn $ "You entered: " ++ show interest ++ " interest"
