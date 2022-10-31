USE constraints;

DROP TABLE IF EXISTS departamento;

CREATE TABLE IF NOT EXISTS departamento (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  localizacao VARCHAR(80)
);

-- success
INSERT INTO departamento (nome, localizacao)
VALUES ('Gerência de TI', NULL);

-- success
INSERT INTO departamento (nome, localizacao)
VALUES ('RH', 'Bloco B, Quarto Andar SL407');

-- success
INSERT INTO departamento
VALUES (100, 'RH', 'Bloco B, Quarto Andar SL407');

-- success
INSERT INTO departamento (nome, localizacao)
VALUES ('RH', 'Bloco B, Quarto Andar SL407');

-- error
INSERT INTO departamento (nome, localizacao)
VALUES (1, 'Gerência de TI', NULL);

-- error
INSERT INTO departamento
VALUES ('Gerência de TI', NULL);

SELECT * FROM departamento;