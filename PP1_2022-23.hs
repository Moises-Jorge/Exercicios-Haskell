-- Resolução da primeira prova parcelar da discipliana de Programação Não Procedimental do ano académico 2022/2023
-- Lista que vamos usar como exemplo para testar as funções:
lista :: [Int]
lista = [2, 8, 6, 9, 0, 7]

-- 1ª Questão: Quando é que podemos usar definições locais e quais as suas vantagens?
--  R: Usamos definições locais quando pretendemos definir fórmula, expressões ou funções auxiliares que nos ajudem a resolver o problema principal, tendo como vantagens código organizado, fácil de ler e reutilização dos nomes das funções.


-- 2ª Questão: Faça um programa que imprime todos os números pares e perfeitos no intervalo de 1 à 2000 utilizando lista por compreensão
paresPerfeitos :: [Int]
paresPerfeitos = [x | x <- [1 .. 2000], mod x 2 == 0 && sum[y | y <- [1 .. (x-1)], mod x y == 0] == x]


-- 3ª Questão: Faça uma função que recebe um char e uma string e retorna uma string sem o caracter, utilizando lista por compreensão
removeChar :: Char -> String -> String
removeChar ch str = [x | x <- str, x /= ch]


-- 4ª Questão: Faça uma função que verifica se uma determinada String é palindroma
isPalindroma :: String -> Bool
isPalindroma str
    | reverse str == str = True
    | otherwise = False


-- 5ª Questão: Faça uma função que recebe uma lista de números inteiros por parámetro e retorna uma tupla contendo a primeira metade da lista, segunda metade da lista, o menor número da lista e o maior número da lista
menor :: [Int] -> Int
menor [x] = x
menor (x : xs)
    | x <= menor xs = x
    | otherwise = menor xs

maior :: [Int] -> Int
maior [x] = x
maior (x : xs)
    | x >= maior xs = x
    | otherwise = maior xs

divList :: [Int] -> ([Int], [Int], Int, Int)
divList lista = (take n lista, drop n lista, menor lista, maior lista)
    where
        n = div (length lista) 2


-- 6ª Questão: Faça um programa que determina o N termo da sequência de fibonacci sendo que f(0) = 0, f(1) = 1 e f(n) = f(n-2) + f(n-1)
fibonacci :: Int -> Int
fibonacci n
    | n == 0 = 0
    | n == 1 = 1
    | n > 1 = fibonacci (n-2) + fibonacci (n-1)



-- 7ª Dada uma lista de tuplas em haskell onde os elementos da tupla são: nome, idade, altura e género de uma pessoa, implemente funções que retorna:
type Pessoa = (Nome, Idade, Altura, Genero)

type Nome = String
type Idade = Int
type Altura = Float
type Genero = Char

listaPessoas :: [Pessoa]
listaPessoas = [
        ("Moises", 25, 1.80, 'M'),
        ("Jorge", 24, 1.70, 'M'),
        ("Maria", 18, 1.50, 'F'),
        ("Joana", 30, 1.65, 'F')
    ]

-- Funcs Auxiliares
genero :: Pessoa -> Char
genero (_, _, _, gen) = gen

idade :: Pessoa -> Int
idade (_, idad, _, _) = idad


--  a) Todos do género M que tem idade no intervalo de 20 à 30 anos
lineA :: [Pessoa] -> [Pessoa]
lineA listaPessoas = [pessoa | pessoa <- listaPessoas, genero pessoa == 'M' && idade pessoa >= 20 && idade pessoa <= 30]


--  b) Quantidade de pessoas com idade maior que 15 e menor que 30
lineB :: [Pessoa] -> Int
lineB listaPessoas = length [pessoa | pessoa <- listaPessoas, idade pessoa > 15 && idade pessoa < 30]

--  c) Cria uma função para alterar as informações da tupla em uma determinada posição dada


-- d) Cria uma função que mostra as informações de todos elementos armazenados na lista de tuplas
lineD :: [Pessoa]
lineD = listaPessoas


-- e) Crie um programa com um menú em que cada opção chama uma função das linhas acima e uma opção para terminar a execução do programa
main :: IO ()
main = do
    putStrLn ("Bem-Vindo ao Menu!\nEscolha uma opcao:")
    putStrLn ("A: lineA\nB: lineB\nC: lineC\nD: lineD\nS: Sair\n")



-- Bonús: faça a função de ordenação quick sort
qSort :: [Int] -> [Int]
qSort [] = []
qSort (x : xs) = qSort[y | y <- xs, y < x] ++ [x] ++ qSort[y | y <- xs, y > x]