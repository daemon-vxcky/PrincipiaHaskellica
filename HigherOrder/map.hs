-- Define a function to double each element of a list
double :: Int -> Int
double x = 2 * x

-- Example list
numbers :: [Int]
numbers = [1, 2, 3, 4, 5]

-- Apply the double function to each element of the list using myMap
doubledNumbers :: [Int]
doubledNumbers = map double numbers

-- Output: [2, 4, 6, 8, 10]
