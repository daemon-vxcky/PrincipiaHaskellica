mymap :: (a-> b) -> [a] -> [b] 
mymap _ []=[]
mymap f (x:xs) = f x : mymap f xs


myfilter :: (a->Bool) -> [a]->[a]
myfilter _ [] = []
myfilter f (x:xs) =if f x  then x: myfilter f xs else myfilter f xs

myzipwith :: (a->b->c) -> [a]->[b]->[c]
myzipwith _ [] _ = []
myzipwith _ _ [] = []
myzipwith f (x:xs) (y:ys) = f x y : myzipwith f xs ys





subract' :: Int->Int->Int
subract' a b = a-b  

-- Write a function addLists :: [Int] -> [Int] -> [Int] that takes two lists of integers and returns a new list where each element is the sum of the corresponding elements from the input lists.
one :: [Int] -> [Int] -> [Int] 
one l1 l2 = myzipwith subract' l1 l2 

add' :: Int -> Int -> Int 
add' a b = a + b
-- Implement a function evenSquares :: [Int] -> [Int] that takes a list of integers and returns a new list containing the squares of the even numbers from the input list.
even' :: Int -> Bool
even' n1 = n1 `mod` 2 == 0

square :: Int -> Int 
square n1 = n1*n1

two :: [Int] ->[ Int]
two l1 = mymap square (myfilter even' l1)


unzip' :: [(a, b)] -> ([a], [b])
unzip' [] = ([], [])
unzip' ((x, y):xs) = (x : fst rest, y : snd rest)
    where
        rest = unzip' xs

myzip :: [a] -> [b] -> [(a, b)]
myzip [] _ = []
myzip _ [] = []
myzip (x:xs) (y:ys) = (x, y) : myzip xs ys

myelem :: (Eq a) => a->[a]->Bool
myelem _ [] = False
myelem a (x:xs)
    | a==x = True
    | otherwise = myelem a xs


func1 :: Bool
func1 =  myelem   'a'   ['a'..'z'] 
