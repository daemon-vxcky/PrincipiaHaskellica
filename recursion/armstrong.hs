isArmstrong :: Int -> Bool
isArmstrong n = n == sumOfPowers n (numDigits n)

sumOfPowers :: Int -> Int -> Int
sumOfPowers n 0 = 0
sumOfPowers 0 k = 0 -- Handle the base case when n is 0
sumOfPowers n k = (digit ^ k) + sumOfPowers remainingDigits k
    where
        digit = n `mod` 10
        remainingDigits = n `div` 10

numDigits :: Int -> Int
numDigits n
    | n < 10 = 1
    | otherwise = 1 + numDigits (n `div` 10)

main :: IO()
main = do
    let n = 153
    if isArmstrong n
        then putStrLn $ "The number is an Armstrong number"
    else
        putStrLn $ "The number is not an Armstrong number"