-- pythTriplets :: Int -> [(Int, Int, Int)]
pythTriplets limit = [(a, b, c) | a <- [1 .. limit], b <- [1 .. limit], c <- [1 .. limit], a < b, a ** 2 + b ** 2 == c ** 2]
