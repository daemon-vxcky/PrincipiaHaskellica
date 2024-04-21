fibo :: Int->Int
fibo 0 = 0
fibo 1 = 1
fibo n = fibo(n-1) + fibo(n-2)

sumn :: Int->Int
sumn 0 = 0
sumn n = n + sumn(n-1)

headList :: [a]->a
headList [] = error "Empty List"
headList (x:_) = x

tailList :: [a]->[a]
tailList [] = error "Empty List"
tailList (x:xs) = xs

myInit :: [a]->[a]
myInit [] = error "Empty List"
myInit [x] = []
myInit (x:xs) = x:myInit xs


lastEle :: [a]->a
lastEle [] = error "Empty List"
lastEle [x] = x
lastEle (x:xs) = lastEle xs

myrev :: [a]->[a]
myrev [] = error "Empty List"
myrev [x] = [x]
myrev (x:xs) = lastEle(xs) : myrev(myInit(x:xs))

listSum :: [Int]->Int
listSum [] = 0
listSum (x:xs) = x + listSum(xs)

isElem :: Eq(a)=>a->[a]->Bool
isElem _ [] = False
isElem n (x:xs) = if n==x then True else isElem n (xs)

freqElem :: Eq(a)=>a->[a]->Int
freqElem _ [] = 0
freqElem n (x:xs) = if n==x then 1 + freqElem n (xs) else freqElem n (xs)

myMap :: (a->b)->[a]->[b]
myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

myFilter :: (a->Bool)->[a]->[a]
myFilter f [] = []
myFilter f (x:xs) = if f x then x : myFilter f (xs) else myFilter f (xs)

myFunc :: (b->Bool)->[(a,b)]->[(a,b)]
myFunc f [] = []
myFunc f ((x,y):xs) = if f y then (x,y): myFunc f (xs) else myFunc f (xs)
