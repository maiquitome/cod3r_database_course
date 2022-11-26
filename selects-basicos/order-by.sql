USE ead;

SELECT -- projeção
    id,
    nome,
    duracao_segundos
FROM aula
WHERE -- seleção
    duracao_segundos IN (60, 120, 180, 240, 300)
ORDER BY
    duracao_segundos;
    
SELECT
    id,
    nome,
    duracao_segundos
FROM aula
WHERE
    duracao_segundos IN (60, 120, 180, 240, 300)
ORDER BY
    duracao_segundos DESC;
    
SELECT
    id,
    nome,
    duracao_segundos
FROM aula
WHERE
    duracao_segundos IN (60, 120, 180, 240, 300)
ORDER BY
    duracao_segundos DESC, nome DESC;
    
SELECT
    id,
    nome,
    duracao_segundos
FROM aula
WHERE
    duracao_segundos IN (60, 120, 180, 240, 300)
ORDER BY
    duracao_segundos DESC, nome ASC;