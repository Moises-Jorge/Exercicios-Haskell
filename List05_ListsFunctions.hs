-- Lista de Funções com Exercícios de Listas!

--1º: Função que retorna o tamanho de uma lista
tamLista :: [a] -> Int
tamLista [] = 0
tamLista (cab : cauda) = 1 + tamLista cauda

-- 2º: Função que recebe uma lista e rotorna outra lista que contem os elementos da primeira lista elevados ao cubo(3)
elevadoAo3 :: [Int] -> [Int]
elevadoAo3 [] = []
elevadoAo3 (cab : cauda) = cab^3 : elevadoAo3 cauda