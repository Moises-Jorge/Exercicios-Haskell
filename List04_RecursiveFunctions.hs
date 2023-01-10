-- Lista de Funções com Exercícios de Recursividade. Objectivo: Praticar a Recursividade!

-- 1º: Função recursiva que calcula o resto inteiro da divisão de dois numeros, utilizando subtrações sucessivas
restoInt :: Int -> Int -> Int
restoInt a b
    | a < b = a
    | a == b = 0
    | otherwise = restoInt (a - b) b

-- 2º: Função que calcula o factorial de um numero
factorial :: Int -> Int
factorial n
    | n == 0 || n == 1 = 1
    | n > 1 = n * factorial (n-1)
    | otherwise = -1 -- Não existe factorial de um número negativo