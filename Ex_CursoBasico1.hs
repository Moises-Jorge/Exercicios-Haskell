-- Neste arquivo estarei acompanhando e recriando os códigos do curso básico de Haskell do canal do youtube do professor Marcos Castro

-- Aula 11: Listas Parte II
sizeList :: [a] -> Int -- Funcao para calcular o tamanho de uma Lista
sizeList [] = 0
sizeList (c : co) = 1 + sizeList co

{- Aula 12: Listas Parte III
    Nesta aula vamos criar uma função que verifica se duas listas são iguais.

    Duas listas são iguais quando têm:
    - O mesmo tamanho/ mesmo número de elementos;
    - Os mesmo elemetos;
    - Os elementos na mesma posições
-}
isEquals :: [Int] -> [Int] -> Bool
isEquals [] [] = True
isEquals [] _ = False
isEquals _ [] = False
isEquals (c : co) (x : xs)
    | c == x = isEquals co xs
    | otherwise = False

{- Aula 13: Listas Parte IV
    Nesta aula criamos uma função que recebe uma lista e inverte a ordem dos seus elementos
    
    Ex de Entrada: [1,2,3]
    Ex de Saída:   [3,2,1]
-}
inverteLista :: [x] -> [x]
inverteLista [] = []
inverteLista (c : co) = inverteLista co ++ [c]

{- Aula 14: Exercicios com Listas
    Criar 3 funções:
    1 - Uma que verifica se um determinado elemento pertence ou não na lista
    2 - Uma para achar o mair elemento de uma lista
    3 - Uma que verifica se todos os números de uma lista são pares
-}
pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (x : xs) elem
    | x == elem = True
    | otherwise = pertence xs elem

maior :: [Int] -> Int
maior [] = 0
maior [x] = x
maior (x : xs)
    | x >= maior xs = x
    | otherwise = maior xs

todosPares :: [Int] -> Bool
todosPares [] = True
todosPares (x : xs)
    | mod x 2 /= 0 = False
    | otherwise = todosPares xs