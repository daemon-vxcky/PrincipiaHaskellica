fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fibSequence :: Int -> [Int]
fibSequence n = [fib x | x <- [1 .. n]]
