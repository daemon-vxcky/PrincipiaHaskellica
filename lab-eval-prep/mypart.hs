myp :: Int->[Int]->[Int]
myp 0 xs = xs
myp n [] = []
myp n (x:xs) = myp (n-1) xs

myq :: Int->[Int]->[Int]
myq 0 xs = []
myq n [] = []
myq n (x:xs) = x : myq (n-1) xs

splitList :: Int -> [Int] -> ([Int], [Int])
splitList n xs = (myq n xs, myp n xs)

helper :: Int -> [Int] -> IO ()
helper n xs = do
    let (left, right) = splitList n xs
    putStrLn $ "Left part of list is " ++ show left
    putStrLn $ "Right part of list is " ++ show right
