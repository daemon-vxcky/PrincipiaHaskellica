days :: Int -> (Int, Int )
days num = (num `div` 365 , num `div` 7) 

rev :: Int -> String  
rev 0 = ""
rev num = "" ++ show(num `mod` 10) ++ rev (num `div ` 10) 

rev2 :: Int -> Int
rev2 0 = 0
rev2 num = read (rev num )

selection :: Int -> String
selection num 
    | num <80 && num> 70 = "dhanush"
    | num <90 && num> 80 = "jeff"
    | otherwise = "hareisgreat"