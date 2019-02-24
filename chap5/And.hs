and' :: [Bool] -> Bool
and' xs = foldr (&&) True xs