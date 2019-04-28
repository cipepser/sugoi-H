import Control.Monad
import Data.Char

main = forever $ do
    -- l <- getLine
    contents <- getContents
    putStrLn $ map toUpper contents