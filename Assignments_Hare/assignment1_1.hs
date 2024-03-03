{-# LANGUAGE MultiWayIf #-}

module Main where

-- B. Selection Problems (Conditional Statements)

-- 1. Find the biggest of two numbers.
biggestOfTwo :: Int -> Int -> Int
biggestOfTwo a b = if a > b then a else b

-- 2. Find the smallest of two numbers.
smallestOfTwo :: Int -> Int -> Int
smallestOfTwo a b = if a < b then a else b

-- 3. Find the biggest of three numbers.
biggestOfThree :: Int -> Int -> Int -> Int
biggestOfThree a b c = max a (max b c)

-- 4. Check if a number is even or odd.
isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

-- 5. Check if a number is positive, negative, or zero.
checkNumber :: Int -> String
checkNumber n
    | n > 0     = "Positive"
    | n < 0     = "Negative"
    | otherwise = "Zero"

-- 6. Check if a number is divisible by 7.
isDivisibleBy7 :: Int -> Bool
isDivisibleBy7 n = n `mod` 7 == 0

-- 7. Check if a given character is vowel, number, or any other character.
checkCharacter :: Char -> String
checkCharacter c
    | c `elem` "aeiouAEIOU" = "Vowel"
    | c `elem` "0123456789" = "Number"
    | otherwise             = "Other Character"

-- 17. Implement a menu-driven calculator.
menuDrivenCalculator :: Int -> Int -> Char -> Int
menuDrivenCalculator num1 num2 operator
    | operator == '+' = num1 + num2
    | operator == '-' = num1 - num2
    | operator == '*' = num1 * num2
    | operator == '/' = if num2 /= 0 then num1 `div` num2 else error "Cannot divide by zero"
    | otherwise       = error "Invalid operator"

-- Main function to test the functions
main :: IO ()
main = do
    putStrLn "B. Selection Problems (Conditional Statements)"

    -- Test cases for the functions
    putStrLn "1. Find the biggest of two numbers:"
    putStrLn $ "Biggest of 5 and 10: " ++ show (biggestOfTwo 5 10)
    putStrLn $ "Biggest of (-3) and 8: " ++ show (biggestOfTwo (-3) 8)

    putStrLn "2. Find the smallest of two numbers:"
    putStrLn $ "Smallest of 5 and 10: " ++ show (smallestOfTwo 5 10)
    putStrLn $ "Smallest of (-3) and 8: " ++ show (smallestOfTwo (-3) 8)

    putStrLn "3. Find the biggest of three numbers:"
    putStrLn $ "Biggest of 5, 10, and 3: " ++ show (biggestOfThree 5 10 3)
    putStrLn $ "Biggest of (-3), 8, and 12: " ++ show (biggestOfThree (-3) 8 12)

    putStrLn "4. Check if a number is even or odd:"
    putStrLn $ "Is 10 even? " ++ show (isEven 10)
    putStrLn $ "Is 7 odd? " ++ show (isEven 7)

    putStrLn "5. Check if a number is positive, negative, or zero:"
    putStrLn $ "Check number 5: " ++ checkNumber 5
    putStrLn $ "Check number (-3): " ++ checkNumber (-3)
    putStrLn $ "Check number 0: " ++ checkNumber 0

    putStrLn "6. Check if a number is divisible by 7:"
    putStrLn $ "Is 14 divisible by 7? " ++ show (isDivisibleBy7 14)
    putStrLn $ "Is 21 divisible by 7? " ++ show (isDivisibleBy7 21)

    putStrLn "7. Check if a given character is vowel, number, or any other character:"
    putStrLn $ "Check character 'a': " ++ checkCharacter 'a'
    putStrLn $ "Check character '5': " ++ checkCharacter '5'
    putStrLn $ "Check character '#': " ++ checkCharacter '#'

    putStrLn "17. Implement a menu-driven calculator:"
    putStrLn $ "10 + 5 = " ++ show (menuDrivenCalculator 10 5 '+')
    putStrLn $ "10 - 5 = " ++ show (menuDrivenCalculator 10 5 '-')
    putStrLn $ "10 * 5 = " ++ show (menuDrivenCalculator 10 5 '*')
    putStrLn $ "10 / 5 = " ++ show (menuDrivenCalculator 10 5 '/')
