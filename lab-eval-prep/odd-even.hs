-- Create a function to check if a given integer is even or odd in Haskell.

mycheck :: Int->IO()
mycheck n = do
    let remainder = n `mod` 2
    if remainder==0 then putStrLn $ "Even"
    else putStrLn $ "Odd"
