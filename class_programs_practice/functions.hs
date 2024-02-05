main :: IO()

h ::  [Int]->[Int]
h xs = if null xs then [] else xs where (_:x) = xs

main = do
    let mylist = [1,2,3,4,5]
    print (h mylist)