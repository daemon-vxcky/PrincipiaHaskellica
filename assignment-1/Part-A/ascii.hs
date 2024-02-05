main :: IO ()
main = do
    putStrLn "Enter a character:"
    char <- getChar
    putStrLn $ "ASCII value: " ++ show (fromEnum char)
