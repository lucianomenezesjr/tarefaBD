--DML-------------------------------------------------------------------------------------------------

INSERT INTO usuarios (nome, email, data_nascimento, genero, cidade) VALUES
('João Victor', 'joao.victor@email.com', '2005-05-15', 'Masculino', 'São Paulo'),
('Giovanni Miamoto', 'giovanni.miamoto@email.com', '2005-08-22', 'Masculino', 'Rio de Janeiro'),
('Kelvin', 'kelvin.souza@email.com', '2004-11-30', 'Masculino', 'Belo Horizonte'),
('Andre', 'andre.costa@email.com', '2002-03-10', 'Masculino', 'Porto Alegre'),
('Eduardo Jr', 'eduardo.jr@email.com', '2000-07-18', 'Masculino', 'Brasília');

INSERT INTO interesses (descricao) VALUES
('Música'),
('Esportes'),
('Viagens'),
('Tecnologia');

INSERT INTO usuarios_interesses (id_usuario, id_interesse) VALUES
(1, 1), 
(1, 2), 
(2, 3), 
(2, 4), 
(3, 1), 
(3, 3), 
(4, 2),
(4, 4), 
(5, 1), 
(5, 2); 

INSERT INTO curtidas (id_usuario_origem, id_usuario_destino) VALUES
(1, 2), 
(2, 1),
(3, 4), 
(4, 3), 
(5, 2), 
(2, 5); 