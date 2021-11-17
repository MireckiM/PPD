--zadania na zajecia nr 3 pn
-- Marcin Mirecki s407271

--zad 1
--a
insAsFirst:: Int -> [Int] -> [Int]
insAsFirst x a = x:a

--b
insAsSecond:: Int -> [Int] -> [Int]
insAsSecond x a = head a : [x] ++ tail a

--c
insAsLast:: Int -> [Int] -> [Int]
insAsLast x a = a ++ [x]


--Zad2
--a
retSecond:: [Int] -> Int
retSecond a = head (drop 1 a)

--b
retThird:: [Int] -> Int
retThird a = head (drop 2 a)

--c
lastButOne:: [Int] -> Int
lastButOne a = retSecond ( reverse a )


--zad3
rev:: [Int] -> [Int]
rev [] = []
rev [a] = [a]
rev a = (last a : rev (init a)) 


--zad4
flSwap:: [a] -> [a]
flSwap [] = []
flSwap [a] = [a]
flSwap(h:t@(_:_)) = (last t : init t) ++ [h]

--zad5
czyParz:: [Int] -> Bool
czyParz a = if (mod (length a) 2) == 0 then True
            else False

--zad6

sqMap:: [Int] -> [Int]
sqMap a = map (^2) a

sq:: [Int] -> [Int]
sq [] = []
sq [a] = [a^2]
sq (h:t) = (h^2 : sq (t))


--zad8
duplicate:: a -> Int -> [a]
duplicate a b = take b (repeat (a))

--zad9
remFirst:: Eq a => a -> [a] -> [a]
remFirst _ [] = [] 
remFirst a (h:t) | (h == a) = t 
                 | otherwise = (h : (remFirst a t))


--zad10
remove:: Int -> [a] -> [a]
remove _ [] = []
remove i (h:t) | i==0 = t
               | otherwise = (h : remove (i-1) t)
 
