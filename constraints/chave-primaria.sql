USE constraints;

DROP TABLE IF EXISTS departamento;

CREATE TABLE IF NOT EXISTS departamento (
  id INT PRIMARY KEY,
  nome VARCHAR(60) NOT NULL,
  localizacao VARCHAR(80)
);

-- error
INSERT INTO departamento
VALUES (NULL, 'Gerência de TI', NULL);

-- success
INSERT INTO departamento
VALUES (1, 'Gerência de TI', NULL);

-- error
INSERT INTO departamento
VALUES (1, 'Gerência de TI', NULL);

-- success
INSERT INTO departamento
VALUES (2, 'RH', 'Bloco B, Quarto Andar SL407');

SELECT * FROM departamento;