CREATE TABLE EDITORAS(
	id int unsigned not null auto_increment,
	editora varchar(250) not null,
	primary key(id)
);

CREATE TABLE LIVROS(
	id int unsigned not null auto_increment,
    nome VARCHAR(250) NOT NULL,
    id_editora int unsigned,
    primary key(id),
    foreign key (id_editora) references EDITORAS (id)
    );
    
    select livros.nome, editoras.editora
    from livros LEFT JOIN editoras
    ON livros.id_editora = editoras.id
    ORDER BY livros.nome;
    
	select livros.nome, editoras.editora
    from livros right JOIN editoras
    ON livros.id_editora = editoras.id
    ORDER BY livros.nome;
    
	select livros.nome, editoras.editora
    from livros INNER JOIN editoras
    ON livros.id_editora = editoras.id
    ORDER BY livros.nome;
    
    SELECT * FROM EDITORAS;