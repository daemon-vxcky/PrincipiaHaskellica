-- module Main where

-- A. Sequential Problems

-- 1. Print your address.
printAddress :: String
printAddress = "Sitra covai"

-- 2. Find sum, difference, product, quotient, and remainder.
calculateOperations :: Int -> Int -> (Int, Int, Int, Int, Int)
calculateOperations x y = (x + y, x - y, x * y, x `div` y, x `mod` y)
-- mod and div work for int only . /  % work for float only 

-- 3. Convert distance given in km to m.
kmToM :: Double -> Double
kmToM km = km * 1000

-- 4. Convert temperature given in Fahrenheit to Celsius.
fahrenheitToCelsius :: Double -> Double
fahrenheitToCelsius f = (f - 32) * 5 / 9

-- 5. Convert measurement given in feet to cms.
feetToCm :: Double -> Double
feetToCm feet = feet * 30.48

-- 6. Find the square, cube, square root of the given number.
square :: Double -> Double
square x = x * x

cube :: Double -> Double
cube x = x * x * x

squareRoot :: Double -> Double
squareRoot x = sqrt x

-- 7. Calculate simple interest.
simpleInterest :: Double -> Double -> Double -> Double
simpleInterest principle rate time = (principle * rate * time) / 100

-- 8. Calculate compound interest.
compoundInterest :: Double -> Double -> Double -> Double
compoundInterest principle rate time = principle * ((1 + rate / 100) ** time - 1)

-- 9. Calculate the volume and surface area of a sphere.
sphereVolume :: Double -> Double
sphereVolume radius = (4 / 3) * pi * (radius ** 3)

sphereSurfaceArea :: Double -> Double
sphereSurfaceArea radius = 4 * pi * (radius ** 2)

-- 10. Calculate the area of a triangle whose sides are given.
triangleArea :: Double -> Double -> Double -> Double
triangleArea a b c = let s = (a + b + c) / 2
                      in sqrt (s * (s - a) * (s - b) * (s - c))

-- 11. Convert the given character to uppercase.
toUpperChar :: Char -> Char
toUpperChar char = toEnum (fromEnum char - 32)

-- 12. Find the ASCII value of the given character.
asciiValue :: Char -> Int
asciiValue char = fromEnum char

-- 13. Find the sum of digits of a 3 digit number.
sumOfDigits :: Int -> Int
sumOfDigits n = let digit1 = n `div` 100
                    digit2 = (n `mod` 100) `div` 10
                    digit3 = n `mod` 10
                in digit1 + digit2 + digit3

-- 14. Interchange the value of two variables.
swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

-- 15. Interchange the value of two variables without using a 3rd variable.
swapWithoutTemp :: (Int, Int) -> (Int, Int)
swapWithoutTemp (x, y) = (y, x)

-- 16. Calculate the displacement S, initial velocity u, acceleration a, time t,
-- S = ut + 1/2 at^2
calculateDisplacement :: Float -> Float -> Float -> Float 
calculateDisplacement u a t = (u * t) + (0.5 * a * t * t)

-- Main function to test all the functions
main :: IO ()
main = do
    putStrLn "Exercise 1: Sequential Problems"
    putStrLn "1. Print your address:"
    putStrLn $ "Address: " ++ printAddress

    let (sum, diff, prod, quot, rem) = calculateOperations 10 5
    putStrLn "\n2. Find sum, difference, product, quotient, and remainder:"
    putStrLn $ "Sum: " ++ show sum
    putStrLn $ "Difference: " ++ show diff
    putStrLn $ "Product: " ++ show prod
    putStrLn $ "Quotient: " ++ show quot
    putStrLn $ "Remainder: " ++ show rem

    putStrLn "\n3. Convert distance given in km to m:"
    print $ "Distance in meters: " ++ show (kmToM 5.5)

    putStrLn "\n4. Convert temperature given in Fahrenheit to Celsius:"
    print $ "Temperature in Celsius: " ++ show (fahrenheitToCelsius 98.6)

    putStrLn "\n5. Convert measurement given in feet to cms:"
    print $ "Measurement in centimeters: " ++ show (feetToCm 5)

    putStrLn "\n6. Find the square, cube, and square root of the given number:"
    print $ "Square: " ++ show (square 5)
    print $ "Cube: " ++ show (cube 3)
    print $ "Square root: " ++ show (squareRoot 16)

    putStrLn "\n7. Calculate simple interest:"
    print $ "Simple Interest: " ++ show (simpleInterest 1000 5 2)

    putStrLn "\n8. Calculate compound interest:"
    print $ "Compound Interest: " ++ show (compoundInterest 1000 5 2)

    putStrLn "\n9. Calculate the volume and surface area of a sphere:"
    print $ "Volume of the sphere: " ++ show (sphereVolume 5)
    print $ "Surface area of the sphere: " ++ show (sphereSurfaceArea 5)

    putStrLn "\n10. Calculate the area of a triangle whose sides are given:"
    print $ "Area of the triangle: " ++ show (triangleArea 3 4 5)

    putStrLn "\n11. Convert the given character to uppercase:"
    print $ "Uppercase character: " ++ [toUpperChar 'a']

    putStrLn "\n12. Find the ASCII value of the given character:"
    print $ "ASCII value: " ++ show (asciiValue 'A')

    putStrLn "\n13. Find the sum of digits of a 3 digit number:"
    print $ "Sum of digits: " ++ show (sumOfDigits 123)

    putStrLn "\n14. Interchange the value of two variables:"
    print $ "After swapping: " ++ show (swap (10, 20))

    putStrLn "\n15. Interchange the value of two variables without using a 3rd variable:"
    print $ "After swapping without temp variable: " ++ show (swapWithoutTemp (10, 20))

    putStrLn "\n16. Calculate the displacement:"
    print $ "Displacement: " ++ show (calculateDisplacement 10 5 2)
