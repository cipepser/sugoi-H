import qualified Data.Map as Map
import Data.Char

-- phoneBook :: Map.Map String String
-- phoneBook = Map.fromList $
--     [ ("betty"  , "111-1111")
--     , ("bonnie" , "222-2222")
--     , ("patsy"  , "333-3333")
--     , ("lucille", "444-4444")
--     , ("wendy"  , "555-5555")
--     , ("penny"  , "666-6666")
--     ]

phoneBook = 
    [ ("betty"  , "111-1111")
    , ("bonnie" , "222-2222")
    , ("patsy"  , "333-3333")
    , ("lucille", "444-4444")
    , ("wendy"  , "555-5555")
    , ("penny"  , "666-6666")
    , ("betty"  , "0-111-1111")
    , ("bonnie" , "0-222-2222")
    , ("patsy"  , "0-333-3333")
    , ("lucille", "0-444-4444")
    , ("wendy"  , "0-555-5555")
    , ("penny"  , "0-666-6666")
    ]

string2digits :: String -> [Int]
string2digits = map digitToInt . filter isDigit

-- phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
-- phoneBookToMap xs = Map.fromListWith add xs
--     where add number1 number2 = number1 ++ ", " ++ number2

phoneBookToMap :: (Ord k) => [(k, a)] -> Map.Map k [a]
phoneBookToMap xs = Map.fromListWith (++) $ map (\(k, v) -> (k, [v])) xs