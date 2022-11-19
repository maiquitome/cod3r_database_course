  USE ead;
  
  -- quais são as aulas
  -- que NÃO estão com a duração zerada
  -- duração menor igual a um minuto
  -- e nome seja Conslusão do Módulo
  
  SELECT -- projeção
    * 
  FROM 
    aula 
  WHERE -- seleção
    duracao_segundos BETWEEN 1 AND 60
    AND nome = 'conclusão do módulo'; 
    
   SELECT -- projeção
    * 
  FROM 
    aula 
  WHERE -- seleção
    duracao_segundos BETWEEN 39 AND 55
    AND nome = 'conclusão do módulo'; 