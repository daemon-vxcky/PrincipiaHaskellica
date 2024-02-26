reach :: [Int] -> Int 
reach [] = 0
reach (xs) = maximum(xs)-minimum(xs)

main :: IO ()
main = do
    input <- getLine
    let list = map read (words input) :: [Int]
    let result = reach list
    print result
