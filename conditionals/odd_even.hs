main :: IO()

main = do
    let n1 = 254

    if n1 `rem` 2 == 0
        then putStrLn $ "The number is even"
    else
        putStrLn $ "The number is odd"

        