-- Write a Haskell function to compute the nth Fibonacci number.

mymax :: [Int]->Int
mymax [x] = x
mymax (x:xs) = if x>mymax(xs) then x else mymax(xs)