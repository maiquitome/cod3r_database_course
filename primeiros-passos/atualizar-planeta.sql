USE starwars;

SELECT * FROM planeta;

SET SQL_SAFE_UPDATES = 0; -- desativando

-- Corrigir com update para garantir que cada linha tenha IDs diferentes
UPDATE planeta 
SET id = 100 
WHERE id = 600
LIMIT 1;

-- trocar os valores sos IDs para 1, 2, 3, 4, 5, 6
UPDATE planeta
SET id = id / 100;

SET SQL_SAFE_UPDATES = 1; -- ativando

