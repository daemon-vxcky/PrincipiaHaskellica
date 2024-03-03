startend :: [a] -> (a,a)
startend [] = error "empty lsit"
startend [a] = (a,a)
startend (x:xs) = (x,helperend xs)
    where
        helperend [a] = a
        helperend (x:xs) = helperend xs

