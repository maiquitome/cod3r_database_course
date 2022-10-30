USE tipos_dados;

DROP TABLE aluno;

CREATE TABLE
    aluno (
        matricula CHAR(10) NOT NULL,
        nome VARCHAR(120) NOT NULL,
        nome_social VARCHAR(80),
        semestre TINYINT,
        creditos_cursados SMALLINT,
        media_geral DECIMAL(4, 2)
    );
    
INSERT INTO aluno (matricula, nome, nome_social, semestre, creditos_cursados, media_geral)
VALUES ("202106AF7", "Marlos Pinheiro Borges", "Marlin", 3, 56, 8.7);

SELECT * FROM aluno;