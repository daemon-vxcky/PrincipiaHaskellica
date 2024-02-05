main = do
    let var1 = 10
    let var2 = 20
    putStrLn $ "Before swap the values of var1 and var2 are: " ++ show var1 ++ " " ++ show var2
    let var3 = var1
    let var1=var2
    let var2=var3
    putStrLn $ "After swap the values of var1 and var2 are: " ++ show var1 ++ " " ++ show var2