-- Ficheiro com lista de funções usando DEFINIÇÕES LOCAIS da linguagem haskell

-- USANDO A CLAUSULA "where"
-- 1 - Função que calcula a área de um triângulo unsando a equação de Heron: A = raizQ s(s - a)(s - b)(s - c); s = (a+b+c)/2
areaHeron :: Float -> Float -> Float -> Float
areaHeron a b c = sqrt(s * (s - a) * (s - b) * (s - c))
    where
        s = (a + b + c) / 2

-- 2 - Função que calcula quantas raizes tem uma equção do 2º grau. As condições são as seguintes: Se "delta = 0" a equação só tem uma raiz (tem duas, mas são iguais); Se "delta > 0" a equação tem duas raizes (pq serão diferentes); e se "delta for negativo" a equação não tem raizes (0).
raizEq2grau :: Float -> Float -> Float -> Int
raizEq2grau a b c | delta == 0 = 1 -- Tem apenas uma raiz (pq as duas têm o mesmo valor)
                  | delta > 0 = 2  -- Tem duas raizes diferentes
                  | otherwise = 0  -- Não tem raizes
    where
        delta = b^2 - 4*a*c

-- Funcao que calcula a area de um cinlindro. Sendo que a area eh dada por: AC = 2*areaBase + areaLado; areaBase = pi * raio^2; areaLado = 2*pi * raio * altura
areaCilindro :: Float -> Float -> Float
areaCilindro raio altura = 2*areaBase + areaLado
    where
        areaBase = pi * raio^2
        areaLado = 2*pi * raio * altura


-- DAQUI PARA FRENTE VAMOS USAR A CLAUSULA "let e in"
-- Replicando a função "areaHeron"
areaHeron2 :: Float -> Float -> Float -> Float
areaHeron2 a b c = let s = (a + b + c) / 2
                   in sqrt(s * (s - a) * (s - b) * (s - c)) 

-- Replicando a função "areaCilindro"
areaCilindro2 :: Float -> Float -> Float
areaCilindro2 raio altura =
    let areaBase = pi * raio^2
        areaLado = 2*pi * raio * altura
    in 2*areaBase + areaLado
