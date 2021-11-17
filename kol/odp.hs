--suma:: Num a => Ord a => [a] -> [a] -> [a]
--suma a [] = a
--suma [] b = b
--suma a b = [x | x <- (a ++ b), x>3]


usun:: Eq a => a -> [a] -> [a]
usun a b = filter (/=a) b


map2:: [a] -> Int
map2 a = foldl (+) 0 a
