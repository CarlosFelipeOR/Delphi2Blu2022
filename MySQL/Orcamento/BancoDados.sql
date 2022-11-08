CREATE TABLE Orçamento 
( 
 id INT PRIMARY KEY AUTO_INCREMENT,  
 Data DATE,  
 Numero INT,  
 ValorTotal FLOAT,  
 TotalPeca FLOAT,  
 TotalServico FLOAT,  
 idCliente INT  
); 

CREATE TABLE Cliente 
( 
 CPF VARCHAR(200),  
 Endereco VARCHAR(200),  
 Nome VARCHAR(200),  
 id INT PRIMARY KEY AUTO_INCREMENT,  
 Cidade VARCHAR(200),  
 Telefone VARCHAR(200),  
 Email VARCHAR(200) 
); 

CREATE TABLE Carro 
( 
 Veiculo VARCHAR(200),  
 Placa VARCHAR(200),  
 Ano INT,  
 Id INT PRIMARY KEY AUTO_INCREMENT,  
 KmAtual INT,  
 idCliente INT  
); 

CREATE TABLE ItemPeca 
( 
 id INT PRIMARY KEY AUTO_INCREMENT,  
 Quant INT,  
 ValorTotal FLOAT,  
 ValorUn FLOAT,  
 idOrçamento INT,  
 idPecas INT  
); 

CREATE TABLE ItemServico 
( 
 id INT PRIMARY KEY AUTO_INCREMENT,  
 Quant INT,  
 ValorTotal FLOAT,  
 ValorUn FLOAT,  
 idOrçamento INT,  
 idServicos INT  
); 

CREATE TABLE Pecas 
( 
 id INT PRIMARY KEY AUTO_INCREMENT,  
 Descricao VARCHAR(200),  
 ValorUn FLOAT  
); 

CREATE TABLE Servicos 
( 
 Descricao VARCHAR(200),  
 id INT PRIMARY KEY AUTO_INCREMENT,  
 ValorUn FLOAT  
); 

ALTER TABLE Orçamento ADD FOREIGN KEY(idCliente) REFERENCES Cliente (id);
ALTER TABLE Carro ADD FOREIGN KEY(idCliente) REFERENCES Cliente (id);
ALTER TABLE ItemPeca ADD FOREIGN KEY(idOrçamento) REFERENCES Orçamento (id);
ALTER TABLE ItemPeca ADD FOREIGN KEY(idPecas) REFERENCES Pecas (id);
ALTER TABLE ItemServico ADD FOREIGN KEY(idOrçamento) REFERENCES Orçamento (id);
ALTER TABLE ItemServico ADD FOREIGN KEY(idServicos) REFERENCES Servicos (id);
