-- 10  A Haskell function that reads a list and displays the element that comes in the list after 
--a number entered by the user. 

ten :: Int -> [Int] -> [Int]
ten _ [] = []
ten 0 (x:xs) = (x:xs)
ten num (x:xs) = ten (num-1) xs

-- 9. A Haskell function that searches for a number (value) in a list and displays an 
-- appropriate message. The list of numbers and the value to be searched should be read 
-- from the user.

nine :: Int -> [Int] -> (Bool, Int)
nine _ []  = (False, -1)  
nine num (x:xs) =
    let (found, index) = nine num xs 
    in
        if num == x then (True, 0)  
        else if found then (True, index + 1)  
        else (False, -1)  

-- eight :: [Int] -> [Int] 
-- eight list1  = [x | x<- (list1 !! x | x<- )]

eight1 :: [Int] -> [Int]
eight1 [] = []  
eight1 [x] = [] 
eight1 (_:x:xs) = x : eight1 xs 

eight2 :: [Int] -> [Int]
eight2 list1 = [x | (x, idx) <- zip list1 [0..], odd idx]

-- 7. A Haskell function that reads a list and find the smallest element in the list. 
seven :: [Int] -> Int
seven (x:y:xs)  = if x<y then seven x:xs else 


    