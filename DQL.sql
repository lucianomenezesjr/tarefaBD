--DQL------------------------------------------------------------------------------------------------------------

--Ex01--

SELECT usuarios.nome, interesses.descricao

FROM usuarios

inner join usuarios_interesses ON usuarios.id = usuarios_interesses.id_usuario
inner join interesses ON usuarios_interesses.id_interesse = interesses.id;

--Ex02-------

SELECT usuarios.nome, interesses.descricao

FROM usuarios

left join usuarios_interesses ON usuarios.id = usuarios_interesses.id_usuario
left join interesses ON usuarios_interesses.id_interesse = interesses.id;

--Ex03-------

SELECT 
    usuarios.nome,
    usuarios_reciprocos.nome
FROM 
    curtidas
INNER JOIN 
    curtidas AS curtidas_reciprocas ON curtidas.id_usuario_origem = curtidas_reciprocas.id_usuario_destino 
    AND curtidas.id_usuario_destino = curtidas_reciprocas.id_usuario_origem
INNER JOIN 
    usuarios ON curtidas.id_usuario_origem = usuarios.id
INNER JOIN 
    usuarios AS usuarios_reciprocos ON curtidas.id_usuario_destino = usuarios_reciprocos.id
WHERE 
    curtidas.id_usuario_origem < curtidas_reciprocas.id_usuario_origem;

--Ex04

SELECT 
    usuarios.nome,
    COUNT(curtidas.id_usuario_destino) AS total_curtidas_recebidas
FROM 
    usuarios
LEFT JOIN 
    curtidas ON usuarios.id = curtidas.id_usuario_destino
GROUP BY 
    usuarios.id, usuarios.nome
ORDER BY 
    total_curtidas_recebidas DESC;

--Ex05

SELECT
    cidade, COUNT(id) AS total_usuarios
FROM
    usuarios
GROUP BY
    cidade
ORDER BY
    total_usuarios DESC;