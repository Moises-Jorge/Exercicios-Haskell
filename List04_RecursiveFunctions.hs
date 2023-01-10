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

-- 3º: Função que recebe dois numeros e realiza a multiplicacao entre eles sem usar o sinal de multiplicacao(*), usar soma sucessivas.
multSoma :: Int -> Int -> Int
multSoma a b
    | b == 0 = 0
    | b == 1 = a
    | b > 1 = a + multSoma a (b - 1)

-- 4º: Função que calcula o "n" termo da sequencia de fibonacci
fibonacci :: Int -> Int
fibonacci n
    | n == 0 = 0
    | n == 1 || n == 2 = 1
    | n > 2 = fibonacci (n - 2) + fibonacci (n - 1)

-- 5º: Função que faz a soma sequêncial de um número. Recebe um número e faz a soma de todos os números que estão no intervalo entre ele e zero [n; 0]
somaSeq :: Int -> Int
somaSeq n
    | n == 0 = 0
    | n > 0 = n + somaSeq (n - 1)