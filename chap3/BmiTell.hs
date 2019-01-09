bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supporsedly normal. Pffft, Ibet you're ugly!"
    | bmi <= fat = "You're fat! Lose some weight, fatty!"
    | otherwise                 = "You're a whale, congratulations!"
    where bmi = weight / height^2
          skinny = 18.5
          normal = 25.0
          fat = 30.0