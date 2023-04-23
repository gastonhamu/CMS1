-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (sumaMenosQueMax (x :: (Int, Int, Int)))

sumaMenosQueMax :: (Int, Int, Int) -> Bool
-- Completar acá la definición de la función
sumaMenosQueMax (a,b,c) | maximo(a,b,c) > minimo (a,b,c) + medio(a,b,c) = True
                        | otherwise= False

-- Pueden agregan las funciones que consideren necesarias

maximo:: (Int,Int,Int) -> Int
maximo (a,b,c) | a >= b && a >= c = a
            | b >= a && b >= c = b
            | otherwise= c

minimo:: (Int,Int,Int) -> Int
minimo (a,b,c) | a <= b && a <= c = a
            | b <= a && b <= c = b
            | otherwise= c

medio:: (Int,Int,Int) -> Int
medio (a,b,c) | a < maximo(a,b,c) && a > minimo(a,b,c) = a
              | b < maximo(a,b,c) && b > minimo(a,b,c) = b
              | otherwise= c