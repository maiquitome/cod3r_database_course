USE starwars;

SELECT * FROM personagem;

INSERT INTO personagem 
  (id, nome)
VALUES 
  (7, "excluir1"),
  (8, "excluir2"),
  (9, "excluir3"),
  (10, "excluir4"),
  (11, "excluir5");
  
  
SET SQL_SAFE_UPDATES = 0; -- desativando

-- recomendado usar id
DELETE FROM personagem
WHERE id >= 10;

-- NÃO recomendado outras colunas
DELETE FROM personagem
WHERE altura IS NULL;

SET SQL_SAFE_UPDATES = 1; -- ativando