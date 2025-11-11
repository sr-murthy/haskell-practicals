> import Data.Char

This defines the OR (||) operator using pattern matching.

> orp :: Bool -> Bool -> Bool
> orp True y = True
> orp False y = y

This defines the OR (||) operator using if ... then ... else conditionals.

> orc :: Bool -> Bool -> Bool
> orc x y = if x then True else y

This defines the OR (||) operator using guarded equations.

> org :: Bool -> Bool -> Bool
> org x y
>   | x = True
>   | y = True
>   | otherwise = False

This defines the AND (&&) operator using pattern matching.

> andp :: Bool -> Bool -> Bool
> andp True x = x
> andp False y = True

This defines the AND (&&) operator using if ... then ... else conditional.

> andc :: Bool -> Bool -> Bool
> andc x y = if not x then False else y

This defines the AND (&&) operator using guarded equations.

> andg :: Bool -> Bool -> Bool
> andg x y
>   | not x = False
>   | not y = False
>   | otherwise = True

This defines the function that returns the numeric equivalent of a decimal digit character.

> charToNum :: Char -> Int
> charToNum c = ord c - ord '0'

This defines the same function above but using guarded equations.

> charToNum' :: Char -> Integer
> charToNum' c
>   | c == '0' = 0
>   | c == '1' = 1
>   | c == '2' = 2
>   | c == '3' = 3
>   | c == '4' = 4
>   | c == '5' = 5
>   | c == '6' = 6
>   | c == '7' = 7
>   | c == '8' = 8
>   | c == '9' = 9

This defines a function that takes three integers representing day,
month and year, and returns a formatted string for this date.

> showDate :: Integer -> Integer -> Integer -> String
> showDate day month year = show day ++ show month ++ show year
