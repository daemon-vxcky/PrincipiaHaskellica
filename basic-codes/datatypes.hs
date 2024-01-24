-- Boolean
boolValue :: Bool
boolValue = True

-- Character
charValue :: Char
charValue = 'a'

-- Integer
intValue :: Integer
intValue = 42

-- Floating-point
floatValue :: Float
floatValue = 3.14

-- Double-precision floating-point
doubleValue :: Double
doubleValue = 2.71828

-- String
stringValue :: String
stringValue = "Hello, Haskell!"

-- List
listValue :: [Int]
listValue = [1, 2, 3, 4, 5]

-- Tuple
tupleValue :: (Int, Char, Bool)
tupleValue = (42, 'a', True)

-- Maybe
maybeValue :: Maybe Int
maybeValue = Just 42

-- Either
eitherValue :: Either String Int
eitherValue = Right 42

-- IO
ioValue :: IO ()
ioValue = putStrLn "Hello, IO!"

main :: IO ()
main = do
    putStrLn "Boolean value: " >> print boolValue
    putStrLn "Character value: " >> print charValue
    putStrLn "Integer value: " >> print intValue
    putStrLn "Float value: " >> print floatValue
    putStrLn "Double value: " >> print doubleValue
    putStrLn "String value: " >> print stringValue
    putStrLn "List value: " >> print listValue
    putStrLn "Tuple value: " >> print tupleValue
    putStrLn "Maybe value: " >> print maybeValue
    putStrLn "Either value: " >> print eitherValue
    putStrLn "IO value: " >> ioValue
