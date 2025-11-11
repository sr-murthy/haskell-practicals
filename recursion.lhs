A recursive definition of prod::[Int] -> Int

> prod :: [Int] -> Int
> prod [a] = a
> prod (x:xs) = x * prod xs

A recursive function that determines whether every element of a list of Booleans is true.

> allTrue :: [Bool] -> Bool
> allTrue [] = True
> allTrue (x:xs) = x && allTrue xs

A recursive function that determines whether every element of a list of Booleans is false.

> allFalse :: [Bool] -> Bool
> allFalse [] = True
> allFalse (x:xs) = not x && allFalse xs

A function which increments each element of an integer list by 1.

> decAll :: [Int] -> [Int]
> decAll [] = []
> decAll (x:xs) = (x+1):decAll xs

A function which, given a list of integers, maps zeros to False and non-zero elements to True.

> convertIntBool :: [Int] -> [Bool]
> convertIntBool [] = []
> convertIntBool (x:xs) = (x /= 0):convertIntBool xs

A function which pairs up corresponding elements of two given lists, the first being an integer
list and the second a character list, and stopping when either list ends.  For example:

    [1,2,3] ['a','b','c'] ----> [(1,'a'),(2,'b'),(3,'c')]
    [1,2]   ['a','b','c'] ----> [(1,'a'),(2,'b')]
    [1,2,3] ['a','b']     ----> [(1,'a'),(2,'b')]

> pairUp :: [Int] -> [Char] -> [(Int,Char)]
> pairUp [] [] = []
> pairUp (x:xs) [] = []
> pairUp [] (y:ys) = []
> pairUp (x:xs) (y:ys) = (x,y):pairUp xs ys

A function which returns the first k elements of the given list.

> takePrefix :: [x] -> Int -> [x]
> takePrefix x 0 = []
> takePrefix [] k = []
> takePrefix (x:xs) k = x:takePrefix xs (k-1)

A function which returns the list without the first k elements.

> dropPrefix :: [x] -> Int -> [x]
> dropPrefix x 0 = x
> dropPrefix [] k = []
> dropPrefix (x:xs) k = dropPrefix xs (k-1)

A function which determines whether a given list contains a given element.

> member :: Eq x => [x] -> x -> Bool
> member [] y = False
> member (x:xs) y = x == y || member xs y

A function which determines whether two lists contain the same elements in the same order.

> equals :: Eq x => [x] -> [x] -> Bool
> equals [] [] = True
> equals (x:xs) (y:ys) = x == y && equals xs ys
> equals _ _ = False











 

