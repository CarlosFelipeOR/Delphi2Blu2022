use devs2blu;

CREATE TABLE PedidoCompra ( 
 id INT NOT NULL auto_increment,
 DataPedido date,
 Numero int,
 idComprador int,
 idFornecedor int,
 PRIMARY KEY(id)
 ); 

CREATE TABLE Comprador 
( 
 id INT NOT NULL auto_increment,  
 Nome varchar(150),  
 Cargo varchar(150),
 PRIMARY KEY(id)
); 

CREATE TABLE Fornecedor 
( 
 id INT NOT NULL auto_increment,  
 CNPJ INT,  
 Endereço VARCHAR(200),
 PRIMARY KEY(id)
); 

CREATE TABLE ItemCompra 
( 
 Id INT NOT NULL auto_increment,  
 Quantidade INT,  
 idPedido INT,  
 idProduto INT,
 PRIMARY KEY(id)
); 

CREATE TABLE Produto 
( 
 Id INT NOT NULL auto_increment,  
 Descricao VARCHAR(200),  
 idUnidadeMedida INT,
 PRIMARY KEY(id)
); 

CREATE TABLE UnidadeMedida 
( 
 Id INT NOT NULL auto_increment,  
 Descricao VARCHAR(200),
 PRIMARY KEY(id)
); 

ALTER TABLE PedidoCompra
    ADD FOREIGN KEY(idComprador) REFERENCES Comprador (id),
	ADD FOREIGN KEY(idFornecedor) REFERENCES Fornecedor (id);

ALTER TABLE ItemCompra
	ADD FOREIGN KEY(idPedido) REFERENCES PedidoCompra (id),
	ADD FOREIGN KEY(idProduto) REFERENCES PedidoCompra (id);

ALTER TABLE Produto 
    ADD FOREIGN KEY(idUnidadeMedida) REFERENCES UnidadeMedida (id);