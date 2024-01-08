main :: IO()

main = do
    let n= 45


    if n `rem` 3 == 0 && n `rem` 5 == 0
        then putStrLn $ "FizzBuzz"
    else if n `rem` 3 == 0
        then putStrLn $ "Fizz"
    else if n `rem` 5 == 0
        then putStrLn $ "Buzz"
    else
        putStrLn $ "The number is not divisible by 3 or 5 and the number is :" ++ show n