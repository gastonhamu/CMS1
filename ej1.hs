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

minimo2:: (Int,Int) -> Int
minimo2 (a,b) | a <= b = a
              | otherwise= b            

medio:: (Int,Int,Int) -> Int
medio (a,b,c)| minimo(a,b,c) == a = minimo2 (b, c)
             | minimo(a,b,c) == b = minimo2 (a, c)
             | minimo(a,b,c) == c = minimo2 (b, a)
