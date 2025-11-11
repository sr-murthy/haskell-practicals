Recursive definitions on trees
------------------------------

A general tree data type.

> data Tree a = Empty | Node (Tree a) a (Tree a) deriving Show

A function that calculates the number of elements in a tree of type a.

> treeSize :: Tree a -> Integer
> treeSize Empty = 0
> treeSize (Node lbranch node rbranch) = treeSize lbranch + treeSize rbranch + 1

A function that converts a list into a tree of type a

> treeFromList :: [a] -> Tree a
> treeFromList [] = Empty
> treeFromList (a:as) = Node (Empty) a (treeFromList as)

A function that determines whether a given tree contains a specified element.

> isMemberOfTree :: Eq a => Tree a -> a -> Bool
> isMemberOfTree Empty a = False
> isMemberOfTree (Node lbranch node rbranch) a = a == node  || isMemberOfTree lbranch a || isMemberOfTree rbranch a

A function that converts a list into a search tree (a tree in which,
for a given node, all the values in the left branch are smaller 
and all the values in the right branch are larger).

> searchTreeFromList :: Ord a => [a] -> Tree a
> searchTreeFromList [] = Empty
> searchTreeFromList (a:as) = Node (searchTreeFromList (filter (<=a) as)) a (searchTreeFromList (filter (>a) as))

A function that determines whether a given search tree contains a specified element.

> isMemberOfSearchTree :: Ord a => Tree a -> a -> Bool
> isMemberOfSearchTree Empty a = False
> isMemberOfSearchTree (Node lbranch node rbranch) a 
>     | a == node = True
>     | a < node = isMemberOfSearchTree lbranch a
>     | a > node = isMemberOfSearchTree rbranch a

A function that produces the list of elements from an in-order tree
search (on in which the left branch of a given node is searched first,
then the node, and the right branch of the node).

> inOrderTreeSearch :: Tree a -> [a]
> inOrderTreeSearch Empty = []
> inOrderTreeSearch (Node lbranch node rbranch) = inOrderTreeSearch lbranch ++ [node] ++ inOrderTreeSearch rbranch 
