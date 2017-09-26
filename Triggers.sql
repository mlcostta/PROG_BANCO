
delimiter $$
create trigger log_cidade_Insert after insert
on cidade
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'I';
declare tabela varchar(45) default 'cidade';
declare data date default curdate();

insert into log_cidade (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_cidade_Delete after delete
on cidade
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'D';
declare tabela varchar(45) default 'cidade';
declare data date default curdate();

insert into log_cidade (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_cidade_Update after update
on cidade
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'U';
declare tabela varchar(45) default 'cidade';
declare data date default curdate();

insert into log_cidade (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;


delimiter $$
create trigger log_cliente_Insert after insert
on cliente
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'I';
declare tabela varchar(45) default 'cliente';
declare data date default curdate();

insert into log_cliente (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_cliente_Delete after delete
on cliente
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'D';
declare tabela varchar(45) default 'cliente';
declare data date default curdate();

insert into log_cliente (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_cliente_Update after update
on cliente
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'U';
declare tabela varchar(45) default 'cliente';
declare data date default curdate();

insert into log_cliente (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_funcionario_Insert after insert
on funcionario
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'I';
declare tabela varchar(45) default 'funcionario';
declare data date default curdate();

insert into log_funcionario (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_funcionario_Delete after delete
on funcionario
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'D';
declare tabela varchar(45) default 'funcionario';
declare data date default curdate();

insert into log_funcionario (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_funcionario_Update after update
on funcionario
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'U';
declare tabela varchar(45) default 'funcionario';
declare data date default curdate();

insert into log_funcionario (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_produto_Insert after insert
on produto
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'I';
declare tabela varchar(45) default 'produto';
declare data date default curdate();

insert into log_produto (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_produto_Delete after delete
on produto
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'D';
declare tabela varchar(45) default 'produto';
declare data date default curdate();

insert into log_produto (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;

delimiter $$
create trigger log_produto_Update after update
on produto
for each row
begin
declare user varchar(45) default current_user();
declare operacao character default 'U';
declare tabela varchar(45) default 'produto';
declare data date default curdate();

insert into log_produto (usuario,operacao,tabela,data) values(user,operacao,tabela,data);

end;
