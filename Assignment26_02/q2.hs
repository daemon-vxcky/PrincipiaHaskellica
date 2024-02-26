volume_in_string :: [Integer ]  -> String
volume_in_string [a,b,c] = show(a*b*c) ++"in^3"
volume_in_string _ = error"list too long"


