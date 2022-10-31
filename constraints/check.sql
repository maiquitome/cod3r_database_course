USE constraints;

-- Verificar se a versão mo mysql suporta essa feature
SHOW VARIABLES like 'version'; -- 8.0.31

DROP TABLE IF EXISTS departamento;

CREATE TABLE IF NOT EXISTS departamento (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  localizacao VARCHAR(80),
  qtde_funcionarios INT CHECK (qtde_funcionarios >= 0)
);

-- error
INSERT INTO departamento (nome, qtde_funcionarios)
VALUES ('Gerência de TI', -3);

-- success
INSERT INTO departamento (nome, qtde_funcionarios)
VALUES ('RH', 5);

SELECT * FROM departamento;