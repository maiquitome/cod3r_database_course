USE starwars;

SELECT * FROM personagem;

-- WITH NO WHERE
SET SQL_SAFE_UPDATES = 0; -- desativando
UPDATE personagem SET nome = 'Luke Skywalker';
SET SQL_SAFE_UPDATES = 1; -- ativando

UPDATE personagem 
SET nome = 'Luke Skywalker' 
WHERE id = 1;

UPDATE personagem 
SET id = 7
WHERE id = 5
LIMIT 1;

UPDATE personagem 
SET 
  nome = 'Líder Supremo Snoke',
  destaque = TRUE,
  altura = 2.4
WHERE id = 7;

UPDATE personagem 
SET nome = 'Leia Organa'
WHERE id = 5;