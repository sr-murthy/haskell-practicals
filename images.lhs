> import Data.Complex
> import Bitmaps
> import Images

Functional images
-----------------

A function that creates an m x n grid of complex numbers evenly spaced
between two given complex numbers p and q.

> gridCF :: Int -> Int -> CF -> CF -> Grid CF
> gridCF m n (a :+ b) (c :+ d) 
>   = [[(a + fromIntegral(xstep)*hstep) :+ (b + fromIntegral(ystep)*vstep) | xstep <- [0..m]] | ystep <- [0..n] ]
>             where hstep = (c - a)/(fromIntegral m - 1)
>                   vstep = (d - b)/(fromIntegral n - 1)
                   

