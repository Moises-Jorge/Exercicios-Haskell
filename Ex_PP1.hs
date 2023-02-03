-- Lista de Exercícios da 1º Prova Parcelar de 2022/2023
-- Lista de Exemplo:
lista :: [Int]
lista = [2, 8, 6, 9, 0, 7]

-- 1ª Questão: Quando é que podemos usar definições locais e quais as suas vantagens?
-- R: Usamos definições locais quando pretendemos definir fórmulas, expressões e funções auxiliares que nos ajudem a resolver o problema principal; com a vantagem de reutilização do nome.

-- 2ª Questão: Faça um programa que imprime todos os números pares e perfeitos no intervalo de 1 à 2000 utilizando lista por compreensão
paresPerfeitos :: [Int]
paresPerfeitos = [x | x <- [1..2000], mod x 2 == 0 && sum[k | k <- [1..(x-1)], mod x k == 0] == x]

-- 3ª Questão: Faça uma função que recebe um char e uma string e retorna uma string sem o caracter, utilizando lista por compreensão
removeChar :: Char -> String -> String
removeChar ch str = [x | x <- str, x /= ch]

-- 4ª Questão: Faça uma funçaão que verifica se uma determinada String é palindroma
palin :: String -> Bool
palin str | reverse str == str = True
          | otherwise = False

-- 5ª Questão: Faça uma função que recebe uma lista de números inteiros por parámetro e retorna uma tupla contendo a primeira metade da lista, segunda metade da lista, o menor número da lista e o maior número da lista
maior :: [Int] -> Int
maior [x] = x
maior (x : xs)
    | x >= maior xs = x
    | otherwise = maior xs

menor :: [Int] -> Int
menor [x] = x
menor (x : xs)
    | x <= menor xs = x
    | otherwise = menor xs

--divList :: [Int] -> ([Int], [Int], Int, Int)
--divList ls = ( take(div(length(ls) 2)) ls, drop(div(length(ls) 2)) ls, menor ls, maior ls)

-- 6ª Questão: Faça um programa que determina o N termo da sequência de fibonacci sendo que f(0) = 0, f(1) = 1 e f(n) = f(n-2) + f(n-1)

-- 7ª Dada uma lista de tuplas em haskell onde os elementos da tupla são: nome, idade, altura e género de uma pessoa, implemente funções que retorna:
--  a) Todos do género M que tem idade no intervalo de 20 à 30 anos

--  b) Quantidade de pessoas com idade maior que 15 e menor que 30

--  c) Cria uma função para alterar as informações da tupla em uma determinada posição dada

-- d) Cria uma função que mostra as informações de todos elementos armazenados na lista de tuplas

-- e) Crie um programa com um menú em que cada opção chama uma função das linhas acima e uma opção para terminar a execução do programa

qs :: [Int] -> [Int]
qs [] = []
qs (x : xs) = qs [y | y <- xs, y < x] ++ [x] ++ qs [y | y <- xs, y > x]
