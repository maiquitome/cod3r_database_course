USE ead;

SELECT
    id,
    nome,
    duracao_segundos
FROM aula
WHERE
    duracao_segundos IN (60, 120, 180, 240, 300);

SELECT
    id,
    nome,
    duracao_segundos
FROM aula
WHERE
    duracao_segundos = 60
    OR duracao_segundos = 120
    OR duracao_segundos = 180
    OR duracao_segundos = 240
    OR duracao_segundos = 300;