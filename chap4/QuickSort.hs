quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smallerOrEqual = [a | a <- xs, a <= x]
        lager = [a | a <- xs, a > x]
    in quicksort smallerOrEqual ++ [x] ++ quicksort lager