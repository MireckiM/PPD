wstaw:: Int -> [Int] -> [Int]
wstaw a [] = [a]
wstaw a (h:t) | a<=h = (a:h:t)
              | a>h = (h : (wstaw a t))






filter2 :: (a -> Bool) -> [a] -> [a]
filter2 _ [] = []
filter2 p (h:t) | p h = h : filter2 p t
                | otherwise = filter2 p t


usunp :: Eq a => a -> [a] -> [a]
usunp _ [] = []
usunp x (h:t) | (x == h) = t
              | otherwise = (h : (usunp x t))

roznica:: [Int] -> [Int] -> [Int]
roznica a [] = a
roznica [] b = []
roznica a b = [x | x <- a , notElem x b]


insert :: Ord a => a -> [a] -> [a] 
insert x [] = [x] 
insert x (y:ys) | x > y = y : insert x ys 
                | otherwise = x : y : ys


mapR f = foldr (\x xs -> f x : xs) []

reverseL s = foldl (\xs x -> x:xs) [] s 


