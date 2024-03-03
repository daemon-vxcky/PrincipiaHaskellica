

main :: IO ()
main = do
    putStrLn " The putStrLn function is used to print a string followed by a newline character to the standard output.It has the type signature String -> IO (), indicating that it takes a string and performs I/O operations."
    putChar '\n'
    putStr" this is to get input in same line : enter a number"
    input1 <- getLine -- this gets the input from the console
    let num = read input1 -- read converts the input from string to any type u want
    -- putStrLn $ "Dollar is used as a substitution to () " ++ show $ num+1 IS WRONG 
    -- n "Dollar is used as a substitution to () " ++ show $ num + 1. 
    --The $ operator has lower precedence than the function application operator ++, 
    -- so the expression is parsed as ("Dollar is used as a substitution to () " ++ show) $ (num + 1).
    
    putStrLn $ "Dollar is used as a substitution to () " ++ show ( num+1) 
    input2 <- getLine 
    let num2 = read input2 :: Int
    print $ show $ num2+1