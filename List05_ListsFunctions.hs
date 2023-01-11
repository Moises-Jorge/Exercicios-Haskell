-- Lista de Funções com Exercícios de Listas!

--1º: Função que retorna o tamanho de uma lista
tamLista :: [a] -> Int
tamLista [] = 0
tamLista (cab : cauda) = 1 + tamLista cauda