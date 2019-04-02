phoneBook =
    [("betty", "111-1111")
    ,("bonnie", "222-2222")
    ,("patsy", "333-3333")
    ,("lucille", "444-4444")
    ,("wendy", "555-5555")
    ,("penny", "666-6666")
    ]

-- findKey :: (Eq k) => k -> [(k, v)] -> v
-- findKey key xs = snd . head . filter (\(k, v) -> key == k) $ xs

-- findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
-- findKey key [] = Nothing
-- findKey key ((k, v):xs)
--     | key == k = Just v
--     | otherwise = findKey key xs

findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key xs = foldr (\(k, v) acc -> if key == k then Just v else acc) Nothing xs
