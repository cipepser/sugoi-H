import qualified Data.Foldable as F
import Data.Monoid

data Tree a = EmpltyTree | Node a (Tree a) (Tree a) deriving (Show)

instance F.Foldable Tree where
    foldMap f EmpltyTree = mempty
    foldMap f (Node x l r) = F.foldMap f l `mappend`
                             f x           `mappend`
                             F.foldMap f r

testTree = Node 5
            (
                Node 3
                    (Node 1 EmpltyTree EmpltyTree)
                    (Node 6 EmpltyTree EmpltyTree)
            )
            (
                Node 9
                    (Node 8 EmpltyTree EmpltyTree)
                    (Node 10 EmpltyTree EmpltyTree)
            )