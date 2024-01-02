-- | Prints the given name to the console.
--
--   Example:
--   
--   >>> printName "John"
--   John
printName :: String -> IO()
printName name = putStrLn name

-- | The main function that executes the program.
main :: IO()
main = do
    let name = "Your Name" -- The name to be printed
    printName name