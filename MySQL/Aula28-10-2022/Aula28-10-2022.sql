use sakila;

select * from pessoas;

create table pessoas(
PersonID INT UNSIGNED NOT NULL auto_increment,
LastName VARCHAR(150),
FirstName VARCHAR(150),
AGE smallint(15),
PRIMARY KEY(PersonID),
UNIQUE KEY PersonID(PersonID)
);

INSERT INTO pessoas (lastname,firstname,age)
	VALUES ('Pedro','Joao', 89);

create table pedidos(
OrderID INT UNSIGNED NOT NULL auto_increment,
OrderNumber INT,
PersonId INT UNSIGNED,
PRIMARY KEY(OrderID),
UNIQUE KEY OrderID(OrderID),
FOREIGN KEY (PersonID) REFERENCES Pessoas(PersonID)
);

select * from pedidos;

INSERT INTO pedidos (OrderNumber,PersonId)
	VALUES (89764, 3);