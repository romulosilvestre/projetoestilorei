use salaoestilorei;

-- DML - Data Manipulation Language
-- INSERT
-- DELETE
-- UPDATE

-- Inserir cinco clientes

-- Três funcionários

-- Três serviços
INSERT servico(nome,valor)VALUES('cabelo',20.00);
INSERT servico(nome,valor)VALUES('barba',15.00);
INSERT servico(nome,valor)VALUES('cabelo e barba',32.50);
INSERT servico(nome,valor)VALUES('sobrancelha',10.20);

-- Três agendamentos

SELECT * FROM servico;

INSERT servico(nome,valor)VALUES('cabelo',20.00);
INSERT servico(nome,valor)VALUES('barba',15.00); 
INSERT servico(nome,valor)VALUES('cabelo e barba',32.50); 
INSERT servico(nome,valor)VALUES('cabelo designer',30.00);
SELECT * FROM servico;
DELETE FROM cliente WHERE id > 0;
INSERT cliente(nome,telefone,email,senha)VALUES('maria',61999452224,'maria@gmail.com',4444);
INSERT cliente(nome,telefone,email,senha)VALUES('joao',61999452225,'joao@gmail.com',5555);
INSERT cliente(nome,telefone,email,senha)VALUES('jose',61999452226,'jose@gmail.com',6666);
INSERT cliente(nome,telefone,email,senha)VALUES('marta',61999452227,'marta@gmail.com',7777);
INSERT cliente(nome,telefone,email,senha)VALUES('marcos',61999452228,'marcos@gmail.com',8888);
INSERT cliente(nome,telefone,email,senha)VALUES('Walter',61999452228,'walter@gmail.com',555555);
INSERT cliente(nome,telefone,email,senha)VALUES('Senhor Raposo',61988789890,'raposao@gmail.com',9999);
SELECT * FROM cliente;

INSERT funcionario(nome)VALUES('thaysa');
INSERT funcionario(nome)VALUES('layssa');
INSERT funcionario(nome)VALUES('abel');
INSERT funcionario(nome)VALUES('suzane');
INSERT funcionario(nome)VALUES('Jacobson');
SELECT * FROM funcionario;
SELECT * FROM cliente;
SELECT * FROM servico;
-- DELETE FROM funcionario WHERE id >= 4;
-- O 3 vai cortar o 1 do 2
-- O abel vai cortar o cabelo do João
select * from agendamento;
INSERT INTO agendamento(data_agenda,
                        hora,
                        fk_cliente_id,
                        fk_servico_id,
                        fk_funcionario_id)values(
                        '2024-07-26',
                        '19:30',
                        12,
                        11,
                        4);
INSERT INTO agendamento(data_agenda,
                        hora,
                        fk_cliente_id,
                        fk_servico_id,
                        fk_funcionario_id)values(
                        '2024-07-28',
                        '16:00',
                        12,
                        11,
                        4);
                        
-- cliente = 13
-- serviço = 12
-- funcionário = 5
INSERT INTO agendamento(data_agenda,
                        hora,
                        fk_cliente_id,
                        fk_servico_id,
                        fk_funcionario_id)values(
                        '2024-08-01',
                        '09:00',
                        13,
                        12,
                        6);

SELECT * FROM agendamento;
SELECT * FROM cliente;
SELECT * FROM funcionario;
SELECT * FROM servico;

SELECT 
    a.data_agenda,
    a.hora,
    c.nome AS cliente , 
    s.nome AS servico ,
    f.nome As funcionario
FROM 
    agendamento a
JOIN 
    cliente c ON a.fk_cliente_id = c.id
JOIN 
    servico s ON a.fk_servico_id = s.id
JOIN 
    funcionario f ON a.fk_funcionario_id = f.id;

INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-27', '09:00', 3, 2, 4);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-27', '10:30', 4, 3, 5);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-28', '11:00', 5, 4, 6);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-28', '12:30', 6, 5, 7);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-29', '14:00', 7, 6, 8);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-29', '15:00', 8, 7, 9);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-29', '16:30', 9, 8, 10);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-30', '09:00', 10, 9, 11);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-30', '10:30', 11, 10, 12);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-30', '11:00', 12, 11, 13);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-31', '12:30', 13, 12, 14);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-31', '14:00', 14, 13, 15);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-07-31', '15:30', 15, 14, 16);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-08-01', '09:00', 16, 15, 17);
INSERT INTO agendamento(data_agenda, hora, fk_cliente_id, fk_servico_id, fk_funcionario_id) VALUES ('2024-08-01', '10:30', 17, 16, 18);