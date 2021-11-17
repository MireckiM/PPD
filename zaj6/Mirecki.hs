--zadania na zajecia nr 6 pn
-- Marcin Mirecki s407271

--zad1

module Mirecki
( iloczyn
, suma
, podzbior
, roznica
) where

iloczyn:: [Int] -> [Int] -> [Int]
iloczyn a [] = []
iloczyn [] b = []
iloczyn a b = [x | x <-[(head a)..(last a)], elem x b ]

suma :: (Eq a) => [a] -> [a] -> [a]
suma [] _ = []
suma _ [] = []
suma xs ys = sum $ xs ++ ys where 
    sum [] = []
    sum (h:t)
        | not $ elem h t = h : sum t
        | otherwise = sum t

podzbior:: (Eq a) => [a] -> [a] -> Bool
podzbior [] b = True
podzbior (h:t) b = if elem h b then podzbior t b
                       else False


import Data.List
roznica:: [Int] -> [Int] -> [Int]
roznica [] b = b
roznica a [] = []
roznica a b = (b \\ a)








