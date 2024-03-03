-- Write a Haskell function to compute the nth Fibonacci number.

fibo :: Int->Integer
fibo 1 = 0
fibo 2 = 1
fibo n = fibo(n-1)+fibo(n-2)