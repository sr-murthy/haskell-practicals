> import Bitmaps

A function that displays a character grid as a sequence of characters of the grid.

> charRender :: Grid Char -> IO ()
> charRender charGrid = putStr (unlines charGrid)

> repeatChar :: Int -> Char -> String
> repeatChar 0 c = ""
> repeatChar k c = c:repeatChar (k-1) c

A function that displays a character bitmap of a solid square, hollow square and a right-angled triangle, all of a given side length k.

> solidSquare, hollowSquare, rightTriangle :: Int -> Grid Char
> solidSquare k = [repeatChar k '*' | i <- [1..k]]
> hollowSquare k = [repeatChar k '*'] ++ ["*" ++ repeatChar (k-2) ' ' ++ "*" | n <- [1..(k-2)]] ++ [repeatChar k '*'] 
> rightTriangle k = [repeatChar (k-i) ' ' ++ repeatChar i '*' | i <- [1..k]]

A function that generates a character grid from a boolean grid.

> bwCharView :: Grid Bool -> Grid Char
> bwCharView boolGrid = [[if c then '*' else ' ' | c <- line] | line <- boolGrid]

A function that returns the size of a Cartesian point grid.

> sizePointsBitmap :: [Point] -> (Integer,Integer)
> sizePointsBitmap pMap = (maximum (map fst pMap), maximum (map snd pMap))

 A function that generates a boolean grid from a Cartesian point grid.

> pointsBitmap :: [Point] -> Grid Bool
> pointsBitmap points = [ [ (x,y) `elem` points | x <- [0..width] ] | y <- [0..height] ]
>   where (width,height) = sizePointsBitmap points

A function that generates a Cartesian point grid from a boolean grid

> gridPoints :: Grid Bool -> [Point]
> gridPoints grid = [(toInteger x,toInteger y) | x <- [0..width-1],  y <- [0..height-1], grid!!y!!x]
>              where height = length grid
>                    width = length (grid!!0)
