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

-- 8. Change the case of the given alphabet.
changeCase :: Char -> Char
changeCase c
    | c `elem` ['a'..'z'] = toUpper c
    | c `elem` ['A'..'Z'] = toLower c
    | otherwise           = c

-- 9. Calculate the roots of a quadratic equation.
quadraticRoots :: Double -> Double -> Double -> (Double, Double)
quadraticRoots a b c = ((-b + sqrt (b * b - 4 * a * c)) / (2 * a), (-b - sqrt (b * b - 4 * a * c)) / (2 * a))

-- 10. Convert the single-digit number to words.
digitToWords :: Int -> String
digitToWords n
    | n == 0    = "Zero"
    | n == 1    = "One"
    | n == 2    = "Two"
    | n == 3    = "Three"
    | n == 4    = "Four"
    | n == 5    = "Five"
    | n == 6    = "Six"
    | n == 7    = "Seven"
    | n == 8    = "Eight"
    | n == 9    = "Nine"
    | otherwise = "Not a single-digit number"

-- 11. Calculate the grade of students based on average mark.
-- calculateGrade :: Int -> Int -> Int -> Char
-- calculateGrade rollno mark1 mark2 mark3 =
--     let averageMark = (mark1 + mark2 + mark3) `div` 3
--     in  if | averageMark >= 80 -> 'A'
--            | averageMark >= 70 -> 'B'
--            | averageMark >= 60 -> 'C'
--            | averageMark >= 50 -> 'D'
--            | otherwise         -> 'F'

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
    -- You can test the functions here as per your requirements.
