-- 2.	Write function box that takes a list of Int triples, each representing the length,
-- width, and height of a box in inches. The function returns the total volume of all
-- items as a string in the form "42276in^3"

box :: [(Int, Int, Int)] -> String
box xs = show (sum [l * w * h | (l, w, h) <- xs]) ++ "in^3"

-- Output:
-- ghci> box [(1, 2, 3), (2, 3, 4)]
-- "30in^3"
-- ghci>
