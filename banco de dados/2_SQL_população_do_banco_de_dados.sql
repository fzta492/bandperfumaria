INSERT INTO categorias_de_produto (nome, descricao) VALUES
('Masculino', 'Perfumes com fragrâncias marcantes para homens.'),
('Feminino', 'Perfumes delicados e atraentes para mulheres.');

INSERT INTO produtos (nome, descricao, preco, quantidade_estoque, estoque_minimo, id_categoria) VALUES
('Brisa do Fortaleza', 'Perfume fresco com notas de sal marinho e algas.', 50.00, 100, 10, 1),
('Rosa de iracema', 'Delicado perfume de rosas com um toque de baunilha.', 70.00, 80, 10, 2),
('Noites Calientes', 'Aroma amadeirado com notas de âmbar e pimenta preta.', 60.00, 90, 10, 1),
('Orquídea de Guaramiranga', 'Fragrância floral com base de orquídea e musgo.', 65.00, 75, 10, 2),
('Sol da meia noite', 'Perfume vibrante com notas de laranja e canela.', 55.00, 85, 10, 1),
('Chuva de Primavera', 'Sensação refrescante de chuva com toques de grama verde.', 45.00, 95, 10, 2),
;

INSERT INTO Clientes (Nome, Email, Telefone) VALUES
('João Silva', 'joao.silva@aaa.com', '8512345670'),
('Maria Fernanda', 'maria.fernanda@aaa.com', '41212342203'),
('Carlos Eduardo', 'carlos.eduardo@aaa.com', '2112323423'),
('Luciana Barbosa', 'luciana.barbosa@aaa.com', '1132301934'),
('Ana Paula', 'ana.paula@aaa.com', '5112342342');

INSERT INTO vendas (id_cliente, data_venda, total_venda) VALUES
(2, '2024-01-15', 170.00),
(1, '2024-02-14', 210.00),
(3, '2024-03-10', 65.00),
(4, '2023-11-22', 110.00),
(5, '2023-12-30', 50.00),
(1, '2023-10-15', 120.00),
(2, '2024-04-08', 65.00),
(4, '2023-10-19', 150.00),
(1, '2024-01-25', 90.00),
(5, '2023-12-03', 50.00);

INSERT INTO itens_de_venda (id_venda, id_produto, quantidade, preco_unidade) VALUES
(1, 1, 1, 50.00),
(1, 3, 2, 60.00),
(2, 2, 3, 70.00),
(3, 4, 1, 65.00),
(4, 5, 2, 55.00),
(5, 1, 1, .00),
(6, 3, 2, .00),
(7, 4, 1, .00),
(8, 1, 3, .00),
(9, 5, 2, .00),
(10, 1, 1, .00);



