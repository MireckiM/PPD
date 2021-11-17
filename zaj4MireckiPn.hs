--zadania na zajecia nr 4 pn
-- Marcin Mirecki s407271

--zad 1

iloczynz:: [Int] -> [Int] -> [Int]
iloczynz a [] = []
iloczynz [] b = []
iloczynz a b = [x | x <-[(head a)..(last a)], elem x b ]


--zad2
sumaz :: (Eq a) => [a] -> [a] -> [a]
sumaz [] _ = []
sumaz _ [] = []
sumaz xs ys = sum $ xs ++ ys where 
    sum [] = []
    sum (h:t)
        | not $ elem h t = h : sum t
        | otherwise = sum t

--zad3
powerlist :: [a] -> [[a]]
powerlist [] = [[]]
powerlist (h:t) = xss ++ map (h:) xss
                   where xss = powerlist t

--zad4
--a) 6/(12/(24/(8/2)))=3
--b) (1>2 && (3>2 && (5==5))) = False
--c) (max 3 (max 6 (max 12 (max 4 (max 55 (max 11 18)))))) = 55
--d) (True || (True || (False || False))) = True
--e) (24+(4+(10+((6+54)/2)/2)/2)/2) = 18
--f) ((((54+2)/2+4)/2+10)/2+6)/2 = 9.5
--g) (((64/4)/2)/4) = 2
--h) (2*(2*(2*8+1)+2)+3) = 75

--zad5
nalezy :: (Eq a) => a -> [a] -> Bool  
nalezy a b = foldl (\acc x -> if x == a then True else acc) False b 

--zad6
--mapfr :: (a -> b) -> [a] -> [b]
--mapfr f [] = []
--mapfr f (x:xs) = foldr (\y ys -> (f y):ys) [] xs

--zad9

add1 list = map (\x -> succ x) list
mod2 list = map (\x -> mod x 2) list
pow2 a = (\x -> (x**2)) a
tri a = (\x -> x*3) a
asumb a b = (\x -> (\y -> x+y)) a b
pow a b = (\x -> (\y -> x**y)) a b

