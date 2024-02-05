main = do
    putStrLn $ "Enter a character: "
    charStr <- getLine
    let char = head charStr
    let upper = toEnum (fromEnum char - 32)
    putStrLn $ "You entered: " ++ [char] ++ ". The char in upper case is "++ [upper]