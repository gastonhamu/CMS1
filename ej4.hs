-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaPrimerosNImpares(x ::(Integer)))
  }

sumaPrimerosNImpares :: Integer -> Integer
-- Completar la definición de la función
sumaPrimerosNImpares n = sumaPrimerosNImparesAux n 1
-- Pueden agregan las funciones que consideren necesarias

sumaPrimerosNImparesAux:: Integer -> Integer -> Integer
sumaPrimerosNImparesAux n i| i > 2*n - 1 = 0
                           | otherwise = (2*i + 2) + sumaPrimerosNImparesAux n (i+2)
