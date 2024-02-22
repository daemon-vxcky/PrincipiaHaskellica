isPrime :: Int->Bool
isPrime n
    | n<=1 = False
    | n==2 = True
    | otherwise = isPrimeHelper n 2

isPrimeHelper :: Int->Int->Bool
isPrimeHelper n d
    | d > (n `div` 2) = True
    | n `mod` d == 0 = False
    | otherwise = isPrimeHelper n (d+1)

main :: IO()
main = do
    let num = 5 
    let isprime = isPrime num
    if isprime
        then putStrLn $ "The given number is prime"
    else
        putStrLn $ "The given number is composite"