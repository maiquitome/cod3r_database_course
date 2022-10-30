USE tipos_dados;

DROP TABLE IF EXISTS aluno;

CREATE TABLE
    aluno (
        matricula CHAR(10) NOT NULL,
        nome VARCHAR(120) NOT NULL,
        nome_social VARCHAR(80),
        semestre TINYINT,
        creditos_cursados SMALLINT,
        media_geral DECIMAL(4, 2),
        data_ingresso DATETIME NOT NULL,
        data_conclusao DATE,
        sexo ENUM('masculino', 'feminino'),
        areas_interesse SET('Big Data', 'Banco de Dados', 'Desenvolvimento'),
        bolsista BOOLEAN,
        sumario_disciplinas JSON
    );

INSERT INTO
    aluno (
        matricula,
        nome,
        nome_social,
        semestre,
        creditos_cursados,
        media_geral,
        data_ingresso,
        data_conclusao,
        sexo,
        areas_interesse,
        bolsista,
        sumario_disciplinas
    )
VALUES (
        "202106AF7",
        "Marlos Pinheiro Borges",
        "Marlin",
        3,
        56,
        8.7,
        "2021-02-10 13:44:13",
        "2024-04-14",
        "MAsculinO",
        "Banco de Dados,Desenvolvimento",
        TRUE,
        '
        {
          "semestres": [
            {
              "numero": 1,
              "disciplinas": [
                {
                  "nome": "Cálculo I",
                  "mediaFinal": 7.9
                },
                {
                  "nome": "Algoritmo",
                  "mediaFinal": 9.3
                }
              ]
            }
          ] 
        }
        '
    );

SELECT * FROM aluno;
SELECT * FROM aluno WHERE find_in_set('desenvolvimento', areas_interesse);