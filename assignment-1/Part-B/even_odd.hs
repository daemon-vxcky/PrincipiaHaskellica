main = do
    putStrLn $ "Enter a number: "
    n <- getLine
    let num = read n :: Int

    if (num `mod` 2) == 0
        then putStrLn $ "Even"
        else putStrLn $ "Odd"