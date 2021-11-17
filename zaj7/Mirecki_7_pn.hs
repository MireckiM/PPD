--zadania na zajecia nr 7 pn
-- Marcin Mirecki s407271

import Data.Char
import System.IO
import Text.Printf (printf)
import System.Random (randomRIO)


--zad 1
zad1 :: IO ()
zad1 = do  
    printf "Podaj a \n"  
    a <- readLn :: IO Float 
    printf "Podaj b \n"  
    b <- readLn :: IO Float 
    let apb = (a+b)
    let amb = (a-b)
    let atb = (a*b)
    let adb = (a/b)  
    printf "a + b = %f \n" apb
    printf "a - b = %f \n" amb
    printf "a * b = %f \n" atb
    printf "a : b = %f \n" adb 


--zad2
--funkcja pomocnicza
kwadratowe:: Float -> Float -> Float -> [Float]
kwadratowe a b c  | b^2-4*a*c > 0 = [(((-b) - (sqrt(b^2-4*a*c)))/(2*a)),(((-b) + (sqrt(b^2-4*a*c)))/(2*a))]
                  | b^2-4*a*c == 0 = [-b/(2*a)]
                  | b^2-4*a*c < 0 = []
--funkcja glowna
zad2 :: IO ()
zad2 = do
    printf "Podaj wspolczynnik a : \n"
    a <- readLn :: IO Float
    printf "Podaj wspolczynnik b : \n"
    b <- readLn :: IO Float
    printf "Podaj wspolczynnik c : \n"
    c <- readLn :: IO Float
    putStrLn ("Pierwiastki rownania kwadratowego = " ++ show (kwadratowe a b c))
    

--zad 3
zad3 :: IO ()
zad3 = do
    printf "Podaj pesel:"
    psl <- getLine
    let yr = take 2 psl
    let nw = drop 2 psl
    let mt = take 2 nw
    let nw2 = drop 2 nw
    let day = take 2 nw2
    printf "%s-%s-%s \n" day mt yr


--zad4
mini = 0 :: Integer
maxi = 99 :: Integer

zad4 :: IO ()
zad4 = do
    random <- randomRIO (mini, maxi) :: IO Integer
    printf "Podaj liczbe od %d do %d.\n" mini maxi
    loop random 1 where
        loop :: Integer -> Integer -> IO ()
        loop random tries = do
            guess <- readLn :: IO Integer
            case compare guess random of
                LT -> do
                    putStrLn "Liczba za mala!"
                    if ((succ tries) == 11) then printf "Przegrales! Wlasciwa liczba to %d \n" random
                                            else loop random $ succ tries
                GT -> do
                    putStrLn "Liczba za duza!"
                    if ((succ tries) == 11) then printf "Przegrales! Wlasciwa liczba to %d \n" random
                                            else loop random $ succ tries
                EQ -> do
                    printf "Wygrales! Odgadles %d \n" random

