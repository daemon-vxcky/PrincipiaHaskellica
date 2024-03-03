odd_occur :: [Int]->[Int]
odd_occur list1 = 
    let 
        count:: [Int] -> Int -> Int
        count [] _ = 0
        count (x:xs) num = if num ==x then 1+count xs num else count xs num 

        odd_one :: Int -> Bool
        odd_one num = num `mod` 2 ==1 

        list_of_all_odds :: [Int] ->[Int]
        list_of_all_odds list2 =[x | x <- list1, odd_one(count list1 x ) && odd_one(count list1 x )  ]
        
    in 
        [(x,y) | x <- list2 , y = count(list2,x)]
