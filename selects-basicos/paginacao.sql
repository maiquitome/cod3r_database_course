USE ead;

-- traz do 21 ao 30
SELECT
    id,
    nome,
    data_publicacao
FROM aula
LIMIT 10
OFFSET 20;

-- traz do 31 ao 40
SELECT
    id,
    nome,
    data_publicacao
FROM aula
LIMIT 10
OFFSET 30;

-- traz do 11 ao 40
-- offset 15
-- limit 30
SELECT
    id,
    nome,
    data_publicacao
FROM aula
LIMIT 10, 30;