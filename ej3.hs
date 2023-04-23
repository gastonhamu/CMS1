-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(prod(x ::(Integer)))
  }

prod :: Integer -> Integer
-- Completar la definición de la función
prod x = prodAux x 1
-- Pueden agregan las funciones que consideren necesarias

prodAux:: Integer -> Integer -> Integer
prodAux x i| i > 2*x = 1
           | otherwise= (i*i + 2*i) * prodAux x (i+1)