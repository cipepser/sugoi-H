chain :: Integer -> [Integer]
chain 1 = [1]
chain n
    | even n = n : chain (n `div` 2)
    | odd n = n : chain (3 * n + 1)

numLongChains :: Int
-- numLongChains = length (filter isLong (map chain [1..100]))
    -- where isLong xs = length xs > 15
numLongChains = length (filter (\xs -> length xs > 15)
                               (map chain [1..100]))