--DDL-----------------------------------------------

create table usuarios(
    id serial primary key,
    nome varchar(255) not null,
    email varchar(255) not null,
    data_nascimento date,
    genero varchar(100),
    cidade varchar(255)
);

create table interesses(
    id serial primary key,
    descricao varchar(255)
);

create table curtidas(
    id serial primary key,
    id_usuario_origem integer references usuarios(id),
    id_usuario_destino integer references usuarios(id),
    data_curtida TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

create table usuarios_interesses(

    id_usuario integer references usuarios(id), 
    id_interesse integer references interesses(id)
);