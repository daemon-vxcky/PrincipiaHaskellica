main :: IO()

main = do
    let n1 = 10
    let n2 = 20
    let diff = n2-n1
    putStrLn $ "The difference between n2 and n1 is: " ++ show diff