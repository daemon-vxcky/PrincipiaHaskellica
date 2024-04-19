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
myrev (x:xs) = lastEle(xs) : myInit(x:xs)

