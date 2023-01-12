-- Lista de Funções com Exercícios de Listas!

--1º: Função que retorna o tamanho de uma lista
tamLista :: [a] -> Int
tamLista [] = 0
tamLista (cab : cauda) = 1 + tamLista cauda

-- 2º: Função que recebe uma lista e rotorna outra lista que contem os elementos da primeira lista elevados ao cubo(3)
elevadoAo3 :: [Int] -> [Int]
elevadoAo3 [] = []
elevadoAo3 (cab : cauda) = cab^3 : elevadoAo3 cauda

-- 3º: Função que calcula o somatório dos elementos de uma lista de inteiro
somaElementos :: [Int] -> Int
somaElementos [] = 0
somaElementos (cab : cauda) = cab + somaElementos cauda

-- 4º: Função que verifica se uma string possui o caractere informado como parametro
existeChar :: [Char] -> Char -> Bool
existeChar [] _ = False
existeChar (cab : cauda) ch
    | ch == cab = True
    | otherwise = existeChar cauda ch

-- 5º: Função que retorna o maior valor de uma lista de inteiros
maiorDaLista :: [Int] -> Int
maiorDaLista [] = -404 -- Pode ser qualquer valor desde que se refira a uma lista vazia, pois cada numero pode representar um numero da lista
maiorDaLista (cab : cauda)
    | cab >= maiorDaLista cauda = cab
    | otherwise = maiorDaLista cauda

-- 6º: Função que retorna o menor valor de uma lista de inteiros (o inverso da função anterior)
menorDaLista :: [Int] -> Int
menorDaLista [] = -404
menorDaLista (cab : cauda)
    | cab <= menorDaLista cauda = cab
    | otherwise = menorDaLista cauda