SELECT numero, nome FROM banco;
SELECT banco_numero, numero, nome FROM agencia;
SELECT numero, nome, email FROM cliente;
SELECT banco_numero, agencia_numero, cliente_numero FROM cliente_transacoes;

SELECT * FROM conta_corrente;

SELECT * FROM information_schema.columns WHERE table_name = 'banco';

SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'banco';

-- AVG (média)
-- COUNT (having)
-- MAX
-- MIN
-- SUM

SELECT valor FROM cliente_transacoes;
SELECT AVG(valor) FROM cliente_transacoes;

SELECT COUNT(numero), email
FROM cliente
WHERE email ILIKE '%gmail.com'
GROUP BY email;

SELECT MIN(numero)
FROM cliente;

SELECT MAX(valor)
FROM cliente_transacoes;

SELECT MIN(valor)
FROM cliente_transacoes;

SELECT MAX(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id;

SELECT MIN(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id;

SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'cliente_transacoes';

SELECT COUNT(id) --verificar registros duplicados
FROM cliente_transacoes
GROUP BY tipo_transacao_id
HAVING COUNT(id) > 150;

SELECT SUM(valor) --soma todos os valores - acendente
FROM cliente_transacoes
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id ASC;

SELECT SUM(valor) --soma todos os valores - decrecente
FROM cliente_transacoes
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id DESC;