-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(combinacionesMenoresOiguales(x ::(Integer)))
  }

combinacionesMenoresOiguales :: Integer -> Integer
-- Completar la definición de la función
combinacionesMenoresOiguales n = combAux n 1
-- Pueden agregan las funciones que consideren necesarias

combAux:: Integer -> Integer -> Integer
combAux n i | i > n = 0
            | otherwise= (combAuxJ n i 1) + combAux n (i+1)


combAuxJ:: Integer -> Integer -> Integer -> Integer
combAuxJ n i j | j > n = 0
               | i * j <= n = 1 + combAuxJ n i (j+1)
               | otherwise = 0