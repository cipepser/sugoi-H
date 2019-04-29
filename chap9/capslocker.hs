-- import Control.Monad
-- import Data.Char

-- main = forever $ do
--     contents <- getContents
--     putStr (shortLinesOnly contents)

main = interact shortLinesOnly

shortLinesOnly :: String -> String
shortLinesOnly = unlines . filter (\line -> length line < 10) . lines