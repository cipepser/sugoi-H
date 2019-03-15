quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x : xs) =
    let smallerOrEqual = filter (<= x) xs
        lager          = filter (> x) xs
    in  quicksort smallerOrEqual ++ [x] ++ quicksort lager
