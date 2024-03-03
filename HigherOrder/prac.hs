-- Write a function addLists :: [Int] -> [Int] -> [Int] that takes two lists of integers and returns a new list where each element is the sum of the corresponding elements from the input lists.
one :: [Int] -> [Int] -> [Int] 
one l1 l2 = zipwith add' l1 l2 

add' :: Int -> Int -> Int 
add' 