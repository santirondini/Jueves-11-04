-- Orden superior 

identidad :: a -> a
identidad x=x

-- Funciones con restricciones:

minimo :: Ord a => a -> a -> a 
minimo x y
        | x < y = x
        | otherwise = y

sumaRara :: Num a => a -> a -> a
sumaRara a b = a + b*2

primero :: [a] -> a --No importa de que tipo sea la lista
primero lista = head lista

ultimo :: [a] -> a
ultimo lista = last lista

-- Las funciones se pueden pasar como parametros:

supera100 tarea numero = tarea numero > 100 -- "tarea" puede ser el nombre de cualquier funcion. Es una funcion generica. Comparador generico
-- Se le pasa por consola supera100 doble 40 . "tarea" se remplaza por la funcion doble 

doble x = 2*x

triple x = 3*x

cuadruple x = 4*x

larga lista = length lista > 6
empiezaConA lista = head lista == 'a'
capicua lista = lista == reverse lista 

-- Las tres devuelven booleanos:

larga,empiezaConA,capicua :: [Char]->Bool

-- any : buscador generico | any empiezaConA ["arbol","chau","bareiro"] / True 
-- filter : filtra lo que le pidas | filter even [1,2,3,4,5,6,7] / 2 4 6

-- f1 aplica la funcion pero con los parametros al reves, buscar flip 
f1 x y z = z y x  -- Como z al lado tiene argumentos, tiene que ser a funcion. Recibe dos argumentos 

--f2 aplica la funcion dada sobre el valor dado, buscar (.)
f2 a b = a b --f2 doble (doble 2) / 8 

f3 a b c = a (b c) -- La funcion siempre es la primera. En este caso es a. b tambien es una función ya que tambien tiene
-- argumentos a la derecha | f3 even length "hola" / True . La palabra "hola" tiene una longuitud par 

f4 w e r 
       | w r > e r = w
       | otherwise = e 

--Buscar map, all, foldl1, foldl, zipWith, flip, ., $ 