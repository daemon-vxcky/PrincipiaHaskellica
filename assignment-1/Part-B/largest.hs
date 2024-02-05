main :: IO()

main = do
    print "Enter 2 numbers:"
    n1 <- getLine
    n2 <- getLine
    let num1 = read n1 :: Int
    let num2 = read n2 :: Int
    if num1>num2
        then print "First number is greater"
        else print "Second number is greater"