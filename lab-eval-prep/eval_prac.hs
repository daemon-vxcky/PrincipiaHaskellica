lengther :: Num a => [a] -> a
lengther [] = 0
lengther (a:as) = 1 + lengther as

sumer :: Num a => [a] -> a
sumer [] = 0
sumer (a:as) = a + sumer as

iselem :: (Eq a) => [a] -> a -> Bool
iselem [] _ = False
iselem (x:xs) y
    | x == y = True
    | otherwise = iselem xs y

chooseN :: Int ->  [a] -> [a]
chooseN 0 _ = []
chooseN n [] = []
chooseN n (x:xs) = x : chooseN (n-1) xs

buildList :: Int -> Int -> [Int] 
buildList 0 _ = []
buildList n x = x : buildList (n-1) x

listTimesn :: Num a => [a] -> a-> [a]
listTimesn [] _ = []
listTimesn (x:xs) n = n*x : listTimesn xs n

dropn :: Int -> [a] -> [a]
dropn 0 xs = xs
dropn _ [] = []
dropn n (_:xs) = dropn (n-1) xs

multiplier :: Num a => [a] -> a
multiplier [] = 0
multiplier [a] = a
multiplier (a:as) = a * multiplier as

header :: Num a => [a] -> a
header [] = 0
header (a:as) = a

tailer :: Num a => [a] -> [a]
tailer [] = []
tailer (_:as) = as

initt :: Num a => [a] -> [a]
initt [] = []
initt [_] = []
initt (a:as) =  a: initt as

append ::[a] -> [a] -> [a]
append x y = x ++ y

reverseList :: Num a => [a] -> [a]
reverseList [] = []
reverseList (a:as)  = reverseList as ++ [a] 

{-- 
Functions left to implement Max,Min,count occurence,remove occurence,average,duplicate,
median,mode,range,nth largest,list filters,modulus,division

--}


main :: IO ()
main = do
    let list = [1..10]
    let list1 = [11..20]



    let add = sumer list
    let multi = multiplier list
    let h = header list
    let t = tailer list
    let initer = initt list
    let l = lengther list
    let three = chooseN 3 list
    let list2 = append list list1
    let droplist = dropn 3 list1
    let revlist = reverseList list1
    let checkele = iselem list 100
    let builder = buildList 10 5 
    let listmul3 = listTimesn list 3
    
    

    putStrLn $ "The list is: " ++ show list
    putStrLn $ "The length of the list is: " ++ show l
    putStrLn $ "The sum is: " ++ show add
    putStrLn $ "The multiplication is: " ++ show multi
    putStrLn $ "The head of the list is : "++ show h
    putStrLn $ "The tail of the list is : "++ show t
    putStrLn $ "Everything except the last value is : "++ show initer
    putStrLn $ "The first 3 elements of the list are : "++ show three
    putStrLn $ "The new list is : "++show list2
    putStrLn $ "The dropped list is : "++ show droplist
    putStrLn $ "The reversed list is : "++ show revlist
    putStrLn $ "The element 100 is present in the list : "++ show checkele
    putStrLn $ "The new built list is : "++ show builder
    putStrLn $ "List times 3 is : "++ show listmul3
