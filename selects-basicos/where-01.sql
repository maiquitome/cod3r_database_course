USE ead;

-- quais são as aulas
  -- que NÃO estão com a duração zerada
  -- duração menor igual a um minuto
  
  SELECT -- projeção
    * 
  FROM 
    aula 
  WHERE -- seleção
    duracao_segundos > 0 
    -- duracao_segundos <> 0 
    -- duracao_segundos != 0 
    AND duracao_segundos <= 60;
    
-- quais são as aulas
  -- que são grátis
  -- duração maior que 20 minutos
  SELECT -- projeção
    *
  FROM
    aula
  WHERE -- seleção
    duracao_segundos >= 20 * 60
    AND gratis;
    
-- quais são os cursos
  -- NÃO é gratis
  -- duração maior que 40 HORAS
SELECT -- projeção
  *
FROM
  curso
WHERE -- seleção
  duracao_segundos >= 60 * 60 * 40
  AND NOT gratis;
  