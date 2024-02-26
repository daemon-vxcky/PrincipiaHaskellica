sumList :: [Int]->Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

helper :: [Int]->Int->[String]
helper [] a = []
helper (x:xs) a = (show  (x*100 `div` a)++"%") : (helper xs a)


main :: IO()
main = do
    print("Enter a list")
    input <- getLine
    let mylist = read input :: [Int]
    let sumlist = sumList mylist
    print("Sum of the list is " ++ show sumlist)
    let helperlist = helper mylist sumlist
    print("The list in percentage is " ++ show helperlist)


-- sumList :: [Int] -> Int
-- sumList [] = 0
-- sumList (x:xs) = x + sumList xs

-- helper :: [Int] -> Int -> [String]
-- helper [] _ = []
-- helper (x:xs) a = (show (x * 100 `div` a) ++ "%") : helper xs a

-- main :: IO ()
-- main = do
--     putStrLn "Enter a list"
--     input <- getLine
--     let mylist = read input :: [Int]
--     let sumlist = sumList mylist
--     putStrLn $ "Sum of the list is " ++ show sumlist
--     let helperlist = helper mylist sumlist
--     putStrLn $ "The list in percentage is " ++ show helperlist
--