type PhoneNumber = String
type Name = String 
type PhoneBook = [(Name, PhoneNumber)]

phoneBook = 
    [ ("betty"  , "111-1111")
    , ("bonnie" , "222-2222")
    , ("patsy"  , "333-3333")
    , ("lucille", "444-4444")
    , ("wendy"  , "555-5555")
    , ("penny"  , "666-6666")
    ]

isPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
isPhoneBook name pnumber pbook = (name, pnumber) `elem` pbook