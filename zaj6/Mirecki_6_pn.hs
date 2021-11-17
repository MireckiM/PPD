import Mirecki

--zad2
count :: Eq a => a -> [a] -> Int
count x = length . filter (== x)

remove element list = filter (\e -> e/=element) list

listOfOccur:: [Int] -> [(Int,Int)]
listOfOccur [] = []
listOfOccur [a] = [(a,1)] 
listOfOccur (h:t) = [(h,(count h (h:t)))] ++ (listOfOccur (remove h (h:t)))


