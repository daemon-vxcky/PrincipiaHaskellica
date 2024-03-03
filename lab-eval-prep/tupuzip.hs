tunzip :: [(a,b)]->([a],[b])
tunzip [] = ([],[])
tunzip ((x,y):myt) = 
    let (xs,ys) = tunzip myt
    in (x:xs,y:ys)
