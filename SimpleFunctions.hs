-- Lista com funções simples criadas na linguagem Haskell

-- 1 - Função que calcula a área de um círculo de raio R. Sendo que a área do círculo é dada por: A = pi * r^2
areaCirculo :: Float -> Float
areaCirculo raio = pi * raio^2

-- 2 - Função que calcula o perímetro de um círculo de raio R. sendo que o perímetro é dado por: P = 2*pi * r
periCirculo :: Float -> Float
periCirculo raio = 2*pi * raio

-- 3 - Função que calcula a diferença de área entre dois círculos. Sendo que a diferença é dada por: dif = areaCirculo1 - areaCirculo2. Essa função já usa uma das funções criadas por nós (areaCirculo)
difArea :: Float -> Float -> Float
difArea raio1 raio2 = abs( ( areaCirculo raio1) - ( areaCirculo raio2) ) -- Usou-se a funcao abs para que o valor seja sempre sem sinal!

-- 4 - Função que calcula a hipotenusa H de um triângulo rectângulo a partir dos catetos "a e b". Sendo que a hipotenusa de triangulo eh: H = raizQ a^2 + b^2
hipotenusa :: Float -> Float -> Float
hipotenusa a b = sqrt( a^2 + b^2 )

-- 5 - Função que tem o comportamento do operador lógico "AND". A biblioteca padrão da linguagem já traz uma função com o nome "and", portanto deve-se mudar o nome para não ter problemas na hora de executar.
minhaAnd :: Bool -> Bool -> Bool
minhaAnd False _ = False -- Se algum valor ja for falso, nao importa o resto, o resultado será sempre falso
minhaAnd _ False = False
minhaAnd True True = True

