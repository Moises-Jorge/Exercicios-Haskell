-- Lista de Funções com Exercícios de Recursividade. Objectivo: Praticar a Recursividade!

-- 1º: Função recursiva que calcula o resto inteiro da divisão de dois numeros, utilizando subtrações sucessivas
restoInt :: Int -> Int -> Int
restoInt a b
    | a < b = a
    | a == b = 0
    | otherwise = restoInt (a - b) b

