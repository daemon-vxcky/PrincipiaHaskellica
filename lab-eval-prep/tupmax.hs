tupmax :: (Int,Int)->IO()
tupmax (x,y) = do
    if x<y
        then putStrLn $ "The greater element is: "++show y
        else putStrLn $ "The greater element is: "++show x