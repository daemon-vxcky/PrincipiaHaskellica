main :: IO()

main = do
    print "Enter 3 numbers:"
    n1 <- getLine
    n2 <- getLine
    n3 <- getLine
    let num1 = read n1 :: Int
    let num2 = read n2 :: Int
    let num3 = read n3 :: Int
    if (num1>num2) && (num2>num3)
        then print "First number is greater"
    else if (num2>num3) && (num3>num1)
            then print "Second number is greater"
    else print "Third number is greater"