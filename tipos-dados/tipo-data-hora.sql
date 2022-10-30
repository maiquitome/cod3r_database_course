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
        data_conclusao DATE
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
        data_conclusao
    )
VALUES (
        "202106AF7",
        "Marlos Pinheiro Borges",
        "Marlin",
        3,
        56,
        8.7,
        "2021-02-10 13:44:13",
        "2024-04-14"
    );

SELECT * FROM aluno;