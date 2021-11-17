--Zadania na zajecia nr 2
--Marcin Mirecki s407271

--zad1

--a
an:: Int -> Int -> Int
an a n = anPom a 1 n
anPom a n1 n2 = if n1==n2 then a^n1
                    else anPom a (n1+1) n2

--b
f::Float -> Float
f x | x>2 = x*x
    | 0<x && x<=2 = x-1
    | x<=0 = x*(-1)

--g

type Punkt = (Int, Int)

dalszy::Punkt -> Punkt -> Punkt
dalszy (x1,y1) (x2,y2) | (x1^2)+(y1^2)>(x2^2)+(y2^2) = (x1,y1)
                       | (x1^2)+(y1^2)<(x2^2)+(y2^2) = (x2,y2)

--i
zn:: Int -> Int
zn n = znPom 0 0 n
znPom z s n  = if z==n then s+z
                    else znPom (z+1) (s+z) n

--j
iloczyn:: Int -> Int -> Int
iloczyn a b = a*b

--k
aRek::Int -> Int
aRek 1 = 0
aRek 2 = 1
aRek n = (2 * aRek (n-1)) - (aRek (n-2))

--l
-- a 1 =0, a 2 =1, a n =2a n-1 -a n-2
--aAku::Int -> Int
--aAku 1 = 0
--aAku 2 = 1
--aAku n = aPom n nm1 nm2 3
--aPom n nm1 nm2 a = if n==a then aPom (2*aPom n (n))
--             else if n==2 then wd
--                else if a==n then aPom (2*aPom (n-1) a - (aPom (n-2) a))

--m

kwadratowe:: Float -> Float -> Float -> [Float]
kwadratowe a b c  | b^2-4*a*c > 0 = [(((-b) - (sqrt(b^2-4*a*c)))/(2*a)),(((-b) + (sqrt(b^2-4*a*c)))/(2*a))]
                  | b^2-4*a*c == 0 = [-b/(2*a)]
                  | b^2-4*a*c < 0 = []


--n
najw:: Int -> Int -> Int -> Int
najw a b c | a>=b && a>=c = a
           | b>=a && b>=c = b
           | c>=a && c>=b = c







