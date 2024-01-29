    -- Interchange the value of two variables with a temporary variable
    let initialA = 5
        initialB = 10
        temp = initialA
        swappedA = initialB
        swappedB = temp
    putStrLn $ "Interchanged Values (with temporary variable): initialA = " ++ show swappedA ++ ", initialB = " ++ show swappedB ++ "."

    -- Interchange the value of two variables without using a 3rd variable
    let x = 5
        y = 10
        xPlusY = x + y
        yMinusX = xPlusY - x
        xNew = xPlusY - yMinusX
    putStrLn $ "Interchanged Values (without using a 3rd variable): x = " ++ show xNew ++ ", y = " ++ show yMinusX

    