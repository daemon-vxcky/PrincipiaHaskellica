-- Define a predicate function to check if a number is even
isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

-- Define a list of numbers
numbers :: [Int]
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

-- Use filter to select even numbers from the list
evenNumbers :: [Int]
evenNumbers = filter even numbers

-- Output: [2, 4, 6, 8, 10]
