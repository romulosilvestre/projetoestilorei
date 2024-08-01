-- DQL (Data Query Language)
use salaoestilorei;

-- Palavras reservadas

-- SELECT - Utilizado para selecionar dados de uma tabela.
-- FROM - Especifica a tabela de onde os dados devem ser selecionados.
-- WHERE - Condição para filtrar os registros.
-- JOIN - Combina registros de duas ou mais tabelas.
-- INNER JOIN - Retorna registros que têm correspondência em ambas as tabelas.
-- LEFT JOIN - Retorna todos os registros da tabela à esquerda e os registros correspondentes da tabela à direita.
-- RIGHT JOIN - Retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda.
-- FULL JOIN - Retorna registros quando há uma correspondência em uma das tabelas (não suportado nativamente em MySQL, mas pode ser simulado com UNION).

-- Consultar um cliente com o nome 'suzane'
-- Consultar um registro ou tupla
SELECT * FROM funcionario WHERE nome = 'suzane';
SELECT * FROM funcionario;

-- Consulte os serviços que tem o preço abaixo de 20.00sssssssssssssssssssssss
SELECT * FROM servico WHERE valor < 20.00;
-- Consulte o funcionário com id = 5
SELECT * FROM funcionario;
SELECT * FROM funcionario WHERE id = 4;
-- Consulte apenas os emails de todos os clientes
SELECT email FROM cliente;
-- Mostre todos os agendamentos
SELECT * FROM agendamento;
SELECT 
    a.id AS codigo, -- AS alias=apelido
    a.data_agenda,
    a.hora,
    c.nome AS cliente_nome,
    c.telefone AS cliente_telefone,
    c.email AS cliente_email,
    s.nome AS servico_nome,
    s.valor AS servico_valor,
    f.nome AS funcionario_nome
FROM 
    agendamento a
JOIN 
    cliente c ON a.fk_cliente_id = c.id
JOIN 
    servico s ON a.fk_servico_id = s.id
JOIN 
    funcionario f ON a.fk_funcionario_id = f.id;
    
SELECT * FROM agendamento;



