middle3 :: [Int] -> (Int, Int, Int) 
middle3 [x, y, z] = (x, y, z)
middle3 [_,_] = error "List too short"
middle3 list1 = (middle_minus_1 list1, middle list1, middle_plus_1 list1)
    where
        middle_minus_1 list1 = list1 !! (length list1 `div` 2 - 1)
        middle list1 = list1 !! (length list1 `div` 2)
        middle_plus_1 list1 = list1 !! (length list1 `div` 2 + 1)