-- | This module provides an overview of the list operators in Haskell.
module ListOperators where

-- | The '++' operator is used for list concatenation. It takes two lists and returns a new list that contains all the elements of the first list followed by all the elements of the second list.
(++) :: [a] -> [a] -> [a]
(++) = undefined

-- | The ':' operator, also known as the cons operator, is used to prepend an element to a list. It takes an element and a list, and returns a new list with the element added at the beginning.
-- Remove the invalid type signature for the (:) operator
-- (:)

-- | The '!!' operator is used to access an element at a specific index in a list. It takes a list and an index, and returns the element at that index. Note that indexing starts from 0.
(!!) :: [a] -> Int -> a
(!!) = undefined

-- | The 'head' function returns the first element of a non-empty list.
head :: [a] -> a
head = undefined

-- | The 'tail' function returns all but the first element of a non-empty list.
tail :: [a] -> [a]
tail = undefined

-- | The 'init' function returns all but the last element of a non-empty list.
init :: [a] -> [a]
init = undefined

-- | The 'last' function returns the last element of a non-empty list.
last :: [a] -> a
last = undefined

-- | The 'length' function returns the number of elements in a list.
length :: [a] -> Int
length = undefined

-- | The 'null' function checks if a list is empty. It returns 'True' if the list is empty, and 'False' otherwise.
null :: [a] -> Bool
null = undefined

-- | The 'reverse' function reverses the order of elements in a list.
reverse :: [a] -> [a]
reverse = undefined

-- | The 'take' function takes a specified number of elements from the beginning of a list and returns a new list.
take :: Int -> [a] -> [a]
take = undefined

-- | The 'drop' function drops a specified number of elements from the beginning of a list and returns a new list.
drop :: Int -> [a] -> [a]
drop = undefined

-- | The 'elem' function checks if an element is present in a list. It returns 'True' if the element is found, and 'False' otherwise.
elem :: Eq a => a -> [a] -> Bool
elem = undefined

-- | The 'notElem' function checks if an element is not present in a list. It returns 'True' if the element is not found, and 'False' otherwise.
notElem :: Eq a => a -> [a] -> Bool
notElem = undefined

-- | The 'filter' function takes a predicate function and a list, and returns a new list containing only the elements that satisfy the predicate.
filter :: (a -> Bool) -> [a] -> [a]
filter = undefined

-- | The 'map' function applies a function to each element of a list, and returns a new list with the results.
map :: (a -> b) -> [a] -> [b]
map = undefined

-- | The 'foldl' function takes a binary function, an initial accumulator value, and a list. It applies the function to the accumulator and each element of the list from left to right, and returns the final accumulator value.
foldl :: (b -> a -> b) -> b -> [a] -> b
foldl = undefined

-- | The 'foldr' function takes a binary function, an initial accumulator value, and a list. It applies the function to each element of the list from right to left and the accumulator, and returns the final accumulator value.
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr = undefined