firstLetter :: String -> String
firstLetter "" = "Empty String, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]