
CREATE TABLE clientes (
    cliente1 datatype,string 
    cliente2 datatype,string 
    cliente3 datatype,string,int
   ....
);
CREATE TYPE [db.sql].[tp_IDsTable] AS TABLE(
    [cliente1] [PersonID] NULL
    [cliente2] [PersonID] NULL
    [cliente3] [PersonID] NULL
    [cliente1] [historico de compras] NULL
    [cliente2] [historico de compras] NULL
    [cliente3] [historico de compras] NULL
    [cliente1] [Email] NULL
    [cliente2] [Email] NULL
    [cliente3] [Email] NULL
)
GO

create PROCEDURE TestePassandoArray
  @Id int 
 as

DECLARE @IDsTable tp_IDsTable -- aqui você criar um tipo como se fosse um array.  

insert into @IDsTable 
SELECT IdUsuario FROM tb_Usuarios where IdUsuario = @Id;

select * from @IDsTable

GO

EXEC TestePassandoArray 2
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
    Email varchar(30)
    senha private varchar (30)
    historico de compras private varchar int  (10000000)
    prduto  number varchar int cod (1000)
);

GO
