-- Ficheiro com lista de funções usando as ESTRUTURAS CONDICIONAIS da linguagem haskell

-- USANDO A FORMA TRADICIONAL de se aplicar condições: "if then else"

-- 1 - Função que verifica se um determinado número é PAR.
isPar :: Int -> Bool
isPar num = if mod num 2 == 0 then True else False -- "mod": função que retorna o resto da divisão em haskell

-- 2 - Função que recebe um caractere e verifica se é maiusculo ou minusculo
maiusc_ou_minusc :: Char -> String
maiusc_ou_minusc ch = if ch >= 'a' && ch <= 'z' then "Char MINUSCULO"
                      else if ch >= 'A' && ch <= 'Z' then "Char MAIUSCULO"
                      else "char NAO ALFABETO!"

-- 3 - Função que realiza cálculos a partir do valor de 'a'. Recebe 3 parâmetros "a, b, c" e a partir do valor de a, realiza um cálculo difente. Se "a = 0": b^2 + 3*c; Se "a = 1": 2*c^2 - 3*c; Se "a = 2": 3*c - b^2; Noutros casos a função retorna 0.
calcDe_a :: Int -> Int -> Int -> Int
calcDe_a a b c = if a == 0 then b^2 + 3*c
                 else if a == 1 then 2*c^2 - 3*c
                 else if a == 2 then 3*c - b^2
                 else 0

-- 4 - Função que recebe dois números e devolve o maior entre eles
maiorNum :: Int -> Int -> Int
maiorNum a b = if a >= b then a else b





-- DAQUI pra baixo vamos usar a outra forma de fazer condicionais USANDO "GUARDAS"...

-- Replicando a função "isPar" com GUARDAS
isPar2 :: Int -> Bool
isPar2 num | mod num 2 == 0 = True
           | otherwise = False

-- Replicando a função "maiusc_ou_minusc" com GUARDAS
maiusc_ou_minusc2 :: Char -> String
maiusc_ou_minusc2 ch | ch >= 'a' && ch <= 'z' = "Char MINUSCULO"
                     | ch >= 'A' && ch <= 'Z' = "Char MAIUSCULO"
                     | otherwise = "char NAO ALFABETO!"

-- Replicando a função "calcDe_a" com GUARDAS
calcDe_a2 :: Int -> Int -> Int -> Int
calcDe_a2 a b c | a == 0 = b^2 + 3*c
               | a == 1 = 2*c^2 - 3*c
               | a == 2 = 3*c - b^2
               | otherwise = 0

-- Replicando a função "maiorNum" com GUARDAS
maiorNum2 :: Int -> Int -> Int
maiorNum2 a b | a >= b = a
              | otherwise = b