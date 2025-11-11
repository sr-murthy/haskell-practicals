This function squares a given integer x.

> square :: Integer -> Integer
> square x = x * x

This function quadruples a given integer x using square.

> quad :: Integer -> Integer
> quad x = square (square x)

This function returns the larger of two given integers x, y.

> larger :: (Integer, Integer) -> Integer
> larger (x,y) = if x >= y then x else y 
