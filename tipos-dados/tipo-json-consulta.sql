SELECT sumario_disciplinas FROM aluno;

SELECT 
  json_extract(sumario_disciplinas, "$.semestres")
FROM aluno;

SELECT 
  json_extract(sumario_disciplinas, "$.semestres[0]")
FROM aluno;

SELECT 
  json_extract(sumario_disciplinas, "$.semestres[0].disciplinas")
FROM aluno;

SELECT 
  json_extract(sumario_disciplinas, "$.semestres[0].disciplinas[0]")
FROM aluno;

SELECT 
  json_extract(sumario_disciplinas, "$.semestres[0].disciplinas[0].nome")
FROM aluno;

SELECT 
  json_extract(sumario_disciplinas, "$.semestres[0].disciplinas[0].nome") AS nome,
  json_extract(sumario_disciplinas, "$.semestres[0].disciplinas[0].mediaFinal") AS media_final
FROM aluno;

SELECT 
  *
FROM aluno
WHERE
  json_contains(
    sumario_disciplinas, '{"nome": "Cálculo I"}', "$.semestres[0].disciplinas"
  );