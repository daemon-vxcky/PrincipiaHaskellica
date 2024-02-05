main :: IO ()

main = do
    let num1 = 10
    let num2 = 20
    let sum = num1 + num2
    putStrLn $ "The sum is: " ++ show sum
    let product = num1*num2
    let quotient = num2 `div` num1  
    let remainder = num2 `mod` num1
    putStrLn $ "The product is: " ++ show product
    putStrLn $ "The quotient is: " ++ show quotient
    putStrLn $ "The reaminder is: " ++ show remainder