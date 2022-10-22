USE starwars;

CREATE TABLE IF NOT EXISTS planeta (
  id INT, -- 1
  nome VARCHAR(20), -- 'Terra'
  raio DECIMAL(8, 2), -- no máximo armazena 999999.99
  qtde_luas INT, -- 1
  habitado BOOLEAN -- 0 ou 1
);