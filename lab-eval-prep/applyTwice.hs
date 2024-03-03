-- Define a higher-order function in Haskell called applyTwice that takes a function and a value, 
-- and applies the function twice to the value.
myho :: (Int->Int)->Int->Int
myho f x = f(f(x))

myd :: Int->Int
myd x = x*2

