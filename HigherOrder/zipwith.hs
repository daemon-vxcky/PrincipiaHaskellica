-- zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
-- zipWith' _ [] _ = []
-- zipWith' _ _ [] = []
-- zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- Define a binary function that combines elements.
-- For example, a function that adds two numbers.
add :: Int -> Int -> Int
add x y = x + y

-- Define two lists of numbers.
list1 :: [Int]
list1 = [1, 2, 3]

list2 :: [Int]
list2 = [4, 5, 6]

-- Call zipWith' with the add function and the two lists.
result :: [Int]
result = zipWith add list1 list2

-- Print the result.
main :: IO ()
main = print result

