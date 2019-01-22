{-# OPTIONS -Wall -Werror #-}
addVectours :: (Double, Double) -> (Double, Double) -> (Double, Double)
-- addVectours a b = (fst a + fst b, snd a + snd b)
addVectours (x1, y1) (x2, y2)  = (x1 + x2, y1 + y2)