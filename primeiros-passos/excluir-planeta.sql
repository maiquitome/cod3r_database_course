USE starwars;

SELECT * FROM planeta;

-- DICA!!!
-- selecionar registros antes de excluir

-- VERIFICAR todos os planetas com id impar
SELECT * FROM planeta
WHERE id % 2;

SELECT * FROM planeta
WHERE id % 2 = 1;

SET SQL_SAFE_UPDATES = 0;

-- REMOVER todos os planetas com id impar
DELETE FROM planeta
WHERE id % 2;

SET SQL_SAFE_UPDATES = 1;