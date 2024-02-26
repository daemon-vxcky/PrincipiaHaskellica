lengthl :: [a]->Int
lengthl [] = 0
lengthl (x:xs) = 1 + lengthl(xs)

middle3:: [a]->[a]
middle3 [] = error "Empty List"
middle3 [x] = error "List has only one element"
middle3 [x,y] = error "List has only two elements"
middle3 (xs)=do
    let len = lengthl xs
    let mid = len `div` 2
    let l = mid-1
    let r = mid+1
    let mid3 = [xs!!l,xs!!mid,xs!!r]
    mid3