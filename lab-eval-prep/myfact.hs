-- Write a function in Haskell to calculate the factorial of a non-negative integer.

myfact :: Int->Int
myfact 0 = 1
myfact n = n*myfact(n-1)

main :: IO()
main = do
    putStrLn $ "Enter a number to find the factorial for: "
    input<-getLine
    let val = read input::Int
    let fact = myfact(val)
    putStrLn $ "The factorial of "++show(val)++"  is: "++show(fact)