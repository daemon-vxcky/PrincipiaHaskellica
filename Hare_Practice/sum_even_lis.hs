sum_list:: [Int]->Int
sum_list (x:xs) = if even x then x + sum_list xs else sum_list xs