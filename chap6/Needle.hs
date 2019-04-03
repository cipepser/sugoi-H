import Data.List

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` hasstack = any (needle `isPrefixOf`) (tails hasstack)