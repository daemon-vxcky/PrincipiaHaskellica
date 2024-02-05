main :: IO()

main = do
    putStrLn $ "Enter principal amount: "
    princiStr <- getLine
    putStrLn $ "Enter rate of interest: "
    rateStr <- getLine
    putStrLn $ "Enter time period: "
    timeStr <-getLine

    let princi = read princiStr :: Double
    let rate = read rateStr :: Double
    let time = read timeStr :: Double

    let interest = (princi *  rate * time) / 100
    putStrLn $ "You entered: " ++ show interest ++ " interest"