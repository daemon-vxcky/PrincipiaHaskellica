percent_weights :: [Float] -> [Float]
percent_weights weights = calculatePercentages weights (calculateTotal weights)
    where 
        calculateTotal [] = 0
        calculateTotal (x:xs) = x + calculateTotal xs

        calculatePercentages [] _ = []
        calculatePercentages (x:xs) total = (x / total) * 100 : calculatePercentages xs total