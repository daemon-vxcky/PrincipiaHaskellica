-- 1. A Haskell function that reads marks of ‘n’ students of a class and displays the class 
-- average. Also if more than 2 students have marks less than class average, display a 
-- suitable message. 

classAverage :: [Int] -> Int 
classAverage marks = list_sum (marks)  `div` length_list (marks) 

list_sum :: [Int] -> Int
list_sum [] = 0
list_sum [x] = x
list_sum (x:xs) = x+list_sum xs

length_list :: [Int] -> Int
length_list [] = 0
length_list [y] = 1
length_list (y:xs) = 1+length_list xs

belowAverage :: [Int] -> Bool
belowAverage marks = let x = classAverage marks
                        in length [y | y <- marks, y < x] > 2








-- 2. A haskell function to find the Number Occurring Odd Number of Times in an list.  
-- Input :arr = {1, 2, 3, 2, 3, 1, 3}  
-- Output : 3  
-- Input :arr = {5, 7, 2, 7, 5, 2, 5}  
-- Output : 5  
-- 3. A Haskell function to display all the duplicates elements in the list.  
-- 4. A Haskell function finds the product of elements of a list. 
-- 5. A Haskell function that reads a list and print the odd numbers in the list. 
-- 6. A Haskell function that reads a list and print the sum of even numbers in the list. 
-- 7. A Haskell function that reads a list and find the smallest element in the list. 
-- 8. A Haskell function that reads a list and print the sum of elements at odd list indices. 
-- 9. A Haskell function that searches for a number (value) in a list and displays an 
-- appropriate message. The list of numbers and the value to be searched should be read 
-- from the user. 
-- 10. A Haskell function that reads a list and displays the element that comes in the list after 
-- a number entered by the user. 