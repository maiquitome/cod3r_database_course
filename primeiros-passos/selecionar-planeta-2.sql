USE starwars;

-- #01 - Selecionar planeta -> nome, diametro
SELECT nome, raio * 2 AS diametro FROM planeta;

-- #02 - Selecionar planeta -> nome é diferente de Tatooine
SELECT * FROM planeta WHERE nome <> 'Tatooine';

-- #03 - Selecionar planetas NÃO habitaoos
SELECT * FROM planeta WHERE habitado = 1;
SELECT * FROM planeta WHERE habitado = TRUE;
SELECT * FROM planeta WHERE habitado IS TRUE;
SELECT * FROM planeta WHERE habitado;

-- #04 - Selecionar planetas NÃO habitaoos
SELECT * FROM planeta WHERE habitado = 0;
SELECT * FROM planeta WHERE habitado = FALSE;
SELECT * FROM planeta WHERE habitado IS FALSE;
SELECT * FROM planeta WHERE NOT habitado;
SELECT * FROM planeta WHERE !habitado;

-- #05 - Selecionar planeta com ID par
SELECT * FROM planeta WHERE NOT id MOD 2;
SELECT * FROM planeta WHERE id MOD 2 = 0;
SELECT * FROM planeta WHERE MOD(ID, 2) = 0;
SELECT * FROM planeta WHERE id % 2 = 0;

-- #06 - Selecionar planeta -> ID impar
SELECT * FROM planeta WHERE id MOD 2;
SELECT * FROM planeta WHERE id MOD 2 = 1;
SELECT * FROM planeta WHERE MOD(ID, 2) = 1;
SELECT * FROM planeta WHERE id % 2 = 1;