--3. Wstawianie do posortowanej listy na wlasciwe miejsce
wstaw :: Int -> [Int] -> [Int]
wstaw a [] = [a]
wstaw a (h:t) | a<=h = [a] ++ (h:t)
              | a>h = [h] ++ (wstaw a t)


-- zamiana 2 charow na string i wypisanie w odwrotnej kolejnosci
--abba:: Char -> Char -> String
--abba a b = [b] ++ [a]


--usuniecie pierwszego wystapienia x w liscie
remFirst:: Eq a => a -> [a] -> [a]
remFirst _ [] = [] 
remFirst a (h:t) | (h == a) = t 
                 | otherwise = (h : (remFirst a t))


-- roznica zbiorow bez funkcji difference

roznica:: [Int] -> [Int] -> [Int]
roznica [] b = []
roznica a [] = a
roznica a b = [x | x <- a, notElem x b]


--filter
--type -- (a -> Bool) -> [a] -> [a]

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 _ []                 = []
filter2 p (x:xs) | p x       = x : filter2 p xs
                 | otherwise = filter2 p xs

--zastosowanie foldl/r w map

map2 :: (a -> b) -> [a] -> [b]
map2 f xs = foldr (\y ys -> (f y):ys) [] xs

--zastosowanie foldl/r reverse

reverse2 :: [a] -> [a]  
reverse2 s = foldl (\xs x -> x:xs) [] s  

--lub

reverse3 :: [a] -> [a]  
reverse3 s = foldr (\x xs -> xs ++ [x]) [] s 



--drzewo ale choy wie jak ten algorytm zrobic
data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show)
freeTree :: Tree Int
freeTree = 
    Node 1
        (Node 2
            (Node 4 Empty Empty)
            (Node 5 Empty Empty)
        )
        (Node 3 
            (Empty)
            (Node 6
                (Node 7 Empty Empty)
                (Empty)
            )
        )  
    



