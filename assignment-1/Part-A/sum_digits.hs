-- Function to calculate the sum of digits of a three-digit number
sumOfDigits :: Int -> Int
sumOfDigits num =
    let hundreds = num `div` 100            -- Extract the hundreds place digit
        tens = (num `div` 10) `mod` 10      -- Extract the tens place digit
        units = num `mod` 10                 -- Extract the units place digit
    in hundreds + tens + units               -- Return the sum of digits

-- Main function to test the sumOfDigits function
main :: IO ()
main = do
    putStrLn "Enter a three-digit number:"
    input <- getLine
    let number = read input :: Int
    let hundreds = number `div` 100            
    let tens = (number `div` 10) `mod` 10      
    let units = number `mod` 10 
    putStrLn $ "Sum of digits: " ++ show (hundreds+tens+units)