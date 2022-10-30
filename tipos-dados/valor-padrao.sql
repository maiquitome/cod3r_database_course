USE tipos_dados;

DROP TABLE IF EXISTS aluno;

CREATE TABLE
    aluno (
        matricula CHAR(10) NOT NULL,
        nome VARCHAR(120) NOT NULL,
        nome_social VARCHAR(80),
        semestre TINYINT DEFAULT 1,
        creditos_cursados SMALLINT DEFAULT 0,
        media_geral DECIMAL(4, 2) DEFAULT 0,
        data_ingresso DATETIME NOT NULL DEFAULT (CURRENT_TIME),
        data_conclusao DATE DEFAULT NULL,
        sexo ENUM('masculino', 'feminino'),
        areas_interesse SET('Big Data', 'Banco de Dados', 'Desenvolvimento'),
        bolsista BOOLEAN DEFAULT FALSE
    );

INSERT INTO
    aluno (
        matricula,
        nome,
        nome_social,
        sexo,
        areas_interesse
    )
VALUES (
        "202106AF7",
        "Marlos Pinheiro Borges",
        "Marlin",
        "MAsculinO",
        "Banco de Dados,Desenvolvimento"
    );

SELECT * FROM aluno;