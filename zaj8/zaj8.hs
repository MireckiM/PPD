--zad2

zad2 :: Int -> Int
zad2 1 = 0
zad2 2 = 3
zad2 a = zad2 (a - 1) + 5 * (zad2 (a - 2))

--zad3

fWs:: [Int] -> [Int]
fWs [] = []
fWs (h:t) = [head t] ++ [h] ++ tail t

fWl:: [Int] -> [Int]
fWl [] = []
fWl (h:t) = [last t] ++ tail (init (h:t)) ++ [h]

sWl:: [Int] -> [Int]
sWl [] = []
sWl (h:t) = [h] ++ [last t] ++ init (tail t) ++ [head t]


--zad4

count x = length . filter (x==)

remove element list = filter (\e -> e/=element) list

check:: [Int] -> Bool
check [] = True
check (h:t) = if (count h (h:t)) == (count (head t) (h:t)) then check (remove h (h:t)) else False

--check2 [] =


