-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaDigitos(x ::(Int)))
  }

sumaDigitos :: Int -> Int
-- Completar la definición de la función
sumaDigitos x = sumaDigitosAux x 0
-- Pueden agregan las funciones que consideren necesarias

sumaDigitosAux:: Int -> Int -> Int
sumaDigitosAux x y| mod x 10 > 0 = sumaDigitosAux (div x 10) (y + (mod x 10))
                  | div x 10 > 0 = sumaDigitosAux (div x 10) y
                  | otherwise= y