-- CUIDADO COM DESEMPENHO AO USAR LIKE

-- aulas que COMEÇAM com a palavra Módulo
SELECT
  *
FROM
  aula
WHERE
  nome LIKE 'módulo%';
  
SELECT
  *
FROM
  aula
WHERE
  BINARY nome LIKE 'Módulo%';
  
-- aulas que COMEÇAM com a palavra Módulos ou Módilos
SELECT
  *
FROM
  aula
WHERE
  nome LIKE 'mod_los%';
  
-- aulas que TERMINAM com a palavra Módulo
SELECT
  *
FROM
  aula
WHERE
  nome LIKE '%módulo';
  
-- aulas que CONTENHAM a palavra Módulo
SELECT
  *
FROM
  aula
WHERE
  nome LIKE '%módulo%';