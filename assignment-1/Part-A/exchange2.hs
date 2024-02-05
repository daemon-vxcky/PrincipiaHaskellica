main :: IO ()
main = do
    let var1 = 10
        var2 = 20
    putStrLn $ "Before swap the values of var1 and var2 are: " ++ show var1 ++ " " ++ show var2
    let (var1', var2') = (var2, var1)
    putStrLn $ "After swap the values of var1 and var2 are: " ++ show var1' ++ " " ++ show var2'