header :: Num a => [a] -> a
header [] = error "No elements present"
header (x:xs) = x

lengther :: Num a => [a] -> Int
lengther [] = 0
lengther (x:xs) = 1 + lengther xs

tailer :: Num a => [a] -> a
tailer [] = error "No elements present" 
tailer [x] = x
tailer (x:xs) = tailer xs

startEnd :: Num a => [a] -> (a,a)
startEnd xs = (header xs,tailer xs)

volumecalc ::(Int,Int,Int) -> Int
volumecalc (l,b,h) = l*b*h

box ::  [(Int,Int,Int)] -> String
box [(l,b,h)] = show (volumecalc (l,b,h)) ++ "in^3"

max_ele :: (Num a,Ord a) => [a] -> a
max_ele [] = error "No elements present"
max_ele [x] = x
max_ele (x:xs)
    | x > max_ele xs = x
    | otherwise = max_ele xs

min_ele :: (Num a,Ord a) => [a] -> a
min_ele [] = error "No elements present"
min_ele [x] = x
min_ele (x:xs)
    | x < min_ele xs = x
    | otherwise = min_ele xs

reach :: (Num a,Ord a) => [a] -> a
reach [] = error "No elements present"
reach xs = max_ele xs - min_ele xs

sumer :: [Double] -> Double
sumer [] = 0
sumer (x:xs) = x + sumer xs

dropn :: Int -> [a] -> [a]
dropn 0 xs = xs
dropn _ [] = []
dropn n (x:xs) = dropn (n-1) xs

taken :: Int -> [a] -> [a]
taken 0 xs = []
taken _ [] = []
taken n (x:xs) = x: taken (n-1) xs

middle3 ::(Num a) =>  [a] -> [a] 
middle3 xs
    | lengther xs < 3 = error "List is too short"
    | otherwise = taken 3 array  
    where 
        array = dropn ((lengther xs - 3) `div` 2) xs

percentage_calc ::  [Double] -> Double -> [String]
percentage_calc [] _ = []
percentage_calc (x:xs) w = (show (x/w * 100) ++ "%") : percentage_calc xs w

percentWeight :: [Double] -> [String]
percentWeight xs = percentage_calc xs (sumer xs) 

add1 :: Num a=> a -> a
add1 a = a+1

transformList :: Num a => (a -> a) -> [a] -> [a]
transformList _ [] = []
transformList f (x:xs) = f x : transformList f xs


iseven ::  Int -> Bool
iseven a
    | a `mod` 2 == 0 = True
    | otherwise = False

pickEven ::  (Int -> Bool) -> [Int] -> [Int]
pickEven _ [] = []
pickEven f (x:xs)
    | f x == True = x : pickEven f xs
    | otherwise = pickEven f xs


quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (p:xs) =  quicksort greater ++ [p] ++ quicksort lesser
    where
        greater = [y |y <- xs,y > p]
        lesser =  [y |y <- xs,y <= p]

addtwo :: Num a => a -> a -> a
addtwo x y = x + y

zipwither :: Num a => (a -> a -> a) -> [a] -> [a] -> [a]
zipwither _ [] _ = []
zipwither _ _ [] = []
zipwither f (x:xs) (y:ys) = f x y : zipwither f xs ys
 
listrev :: [a] -> [a]
listrev [] = []
listrev (x:xs) = listrev xs ++ [x]

listcomp :: [Int]
listcomp = [x |x <- [1..10],x `mod` 2 /= 0]

zipper :: [a] -> [b] -> [(a,b)]
zipper [] _ = []
zipper _ [] = []
zipper (x:xs) (y:ys) = (x,y) : zipper xs ys

main :: IO()
main = do 
    let list = [1..10]
    let list2 = [11..20]
    let weights = [12,24,36,48]
    
    let tup = startEnd list
    let vol = box [(10,12,14)]
    let percents = percentWeight weights
    let maxele = max_ele list
    let minele = min_ele list
    let range = reach list
    let droplist = dropn 2 list
    let val = transformList add1 list
    let even_list = pickEven iseven list
    let middle_3 = middle3 list
    let sorted = quicksort list
    let odd_list = listcomp
    let zipped = zipper list list2
    let zipops = zipwither addtwo list list2
    let rev = listrev list2

    putStrLn $ "The start and end of the list is: " ++ show tup
    putStrLn $ "The volume of the box is: " ++ show vol
    putStrLn $ "The percentages are : " ++ show percents
    putStrLn $ "The maximum element is : "++ show maxele
    putStrLn $ "The minimum element is : "++ show minele
    putStrLn $ "The range of the list is : "++ show range
    putStrLn $ "The dropped list is : " ++ show droplist
    putStrLn $ "The value is : " ++ show val
    putStrLn $ "The even list is : " ++ show even_list
    putStrLn $ "The middle 3 elements are : " ++ show middle_3
    putStrLn $ "The sorted  list is : " ++ show sorted
    putStrLn $ "The odd list is : " ++ show odd_list
    putStrLn $ "The zipped list is : " ++ show zipped
    putStrLn $ "The two added lists are : "++ show zipops
    putStrLn $ "The reversed list is : " ++ show rev