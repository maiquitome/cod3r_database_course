USE starwars;

SELECT * FROM personagem;
SELECT nome, id FROM personagem;
SELECT nome, id FROM personagem WHERE id = 5;

-- Tanto faz maiusculas ou minusculas
SELECT nome, altura FROM personagem WHERE nome = 'chewbacca'; -- encontra
SELECT nome, altura FROM personagem WHERE nome = 'CHEWBACCA'; -- encontra
SELECT nome, altura FROM personagem WHERE nome = 'CHEWBACCA '; -- NÃO encontra

-- Com BINARY tem que ser exatamente igual
SELECT nome, altura FROM personagem WHERE BINARY nome = 'Chewbacca'; -- encontra
SELECT nome, altura FROM personagem WHERE BINARY nome = 'chewbacca'; -- NÃO encontra

-- APELIDO (AS)
SELECT altura * 2 FROM personagem;
SELECT altura * 2 AS dobro FROM personagem;

-- Selects com WHERE...
SELECT * FROM personagem WHERE 0; -- nenhum, somente o número 0 é FALSE, os outros números são TRUE
SELECT * FROM personagem WHERE false; -- nenhum
SELECT * FROM personagem WHERE 1; -- todos
SELECT * FROM personagem WHERE 2; -- todos
SELECT * FROM personagem WHERE -2; -- todos
SELECT * FROM personagem WHERE true; -- todos
SELECT * FROM personagem WHERE 2 > 1; -- todos, COM EXPRESSÕES
SELECT * FROM personagem WHERE 10 - 8; -- todos, COM EXPRESSÕES