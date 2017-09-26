DELIMITER //
CREATE PROCEDURE `AlteraCidade`(id_cidade int, nome_cidade varchar(45),sigla_cidade varchar(3))
BEGIN
if((nome != '') && (sigla != '')) then

update cidade set nome=nome_cidade,sigla=sigla_cidade 
where id = id_cidade;

select * from cidade;

else
select 'Os campos não podem ser vazio' as retorno;
end if;
END //

DELIMITER //
CREATE PROCEDURE `AlteraCliente`(id_cli int, nome_cli varchar(45),endereco_cli varchar(100),numero_cli int, bairro_cli varchar(45), cep_cli int, cidade_cli int)
BEGIN
if(id_cli != '' && nome_cli!= '' && endereco_cli !='' && numero_cli != '' && bairro_cli != '' && cep_cli !='' && cidade_cli != '' ) then
update cliente set nome=nome_cli, endereco=endereco_cli,numero=numero_cli,bairro=bairro_cli,cep=cep_cli,cidade_id=cidade_cli
where id = id_cli;

select * from cliente;

else
select 'Os campos não podem ser vazio' as retorno;
end if;
END //

DELIMITER //
CREATE PROCEDURE `AlteraTipoFuncionario`(id_tipo int, descricao_tipo varchar(45))
BEGIN
if(id_tipo != '') && (descricao != '') then
update tipo_funcionario set descricao=descricao_tipo where
id = id_tipo;

select * from tipo_funcionario;

else

select 'Os campos não podem ser vazio' as retorno;
end if;

END //

DELIMITER //
CREATE PROCEDURE `CadastraCidade`(nome varchar(45),sigla varchar(3))
BEGIN
if((nome != '') && (sigla != '')) then

insert into cidade (nome, sigla) values(nome,sigla);
select * from cidade as cidade;

else
select 'Os campos não podem ser vazio' as retorno;
end if;
END //

DELIMITER //
CREATE PROCEDURE `CadastraCliente`(nome varchar(45),endereco varchar(100),numero int,bairro varchar(45),cep int, cidade_id int)
BEGIN
if(nome!= '' && endereco !='' && numero != '' && bairro != '' && cep !='' && cidade_id != '' ) then
insert into cliente(nome,endereco,numero,bairro,cep, id_cidade) values (nome,endereco,numero,bairro,cep, cidade_id);

select * from cliente;

else
select 'Os campos não podem ser vazio' as retorno;
end if;

END //

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `CadastraFuncionario`(nome varchar(45), matricula int, login varchar(45), senha varchar(45), salario double, tipo_funcionario int)
BEGIN
if(nome != '' && matricula != '' && login!= '' && senha!= '' && salario!= '' && tipo_funcionario!= '') then

insert into funcionario (nome, matricula, login, senha, salario, id_tipo_funcionario) values (nome, matricula, login, senha, salario, tipo_funcionario);

select * from funcionario;
else

select 'Os campos não podem ser vazio' as retorno;
end if;

END //

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `CadastraProduto`(descricao varchar(45), valor double, quantidade int, id_tipo_produto int)
BEGIN
if(descricao!= '' && valor != '' && quantidade!= '' && id_tipo_produto!= '') then
insert into produto (descricao, valor, quantidade, id_tipo_produto) values (descricao, valor, quantidade, id_tipo_produto);
select * from produto;

else
select 'Os campos não podem ser vazio' as retorno;
end if;

END //

DELIMITER //
CREATE PROCEDURE `CadastraProdutoVenda`(id_venda int, id_produto int, quantidade int)
BEGIN

insert into produtos_venda (id_venda, id_produto,quantidade) values (id_venda, id_produto, quantidade);

select * from produtos_venda;

END //

DELIMITER //
CREATE PROCEDURE `CadastraProdutoVenda`(id_venda int, id_produto int, quantidade int)
BEGIN

insert into produtos_venda (id_venda, id_produto,quantidade) values (id_venda, id_produto, quantidade);

select * from produtos_venda;

END //

DELIMITER //
CREATE PROCEDURE `CadastraTipoFuncionario`(descricao varchar(45))
BEGIN

insert into tipo_funcionario (descricao) values (descricao);

select * from tipo_funcionario;

END //

DELIMITER //
CREATE PROCEDURE `CadastraTipoProduto`(descricao varchar(45))
BEGIN
insert into tipo_produto (descricao) values (descricao);

select * from tipo_produto;

END //

DELIMITER //
CREATE PROCEDURE `CadastraVenda`(valor double, id_cliente int,id_funcionario int)
BEGIN
declare data date; 
set data = curdate();
insert into venda (data,valor,id_cliente,id_funcionario) values (data,valor,id_cliente,id_funcionario);

select * from venda;

END //

DELIMITER //
CREATE PROCEDURE `RemoveCidade`(id_cidade int)
BEGIN

delete from cidade where id= id_cidade;
select * from cidade;

END //

DELIMITER //
CREATE PROCEDURE `RemoveCliente`(id_cliente int)
BEGIN
delete from cliente where id = id_cliente;

select * from cliente;

END //

DELIMITER //
CREATE PROCEDURE `RemoveTipoFuncionario`(id_tipo int)
BEGIN

delete from tipo_funcionario where id_tipo = id;

select * from tipo_funcionario;

END //

DELIMITER //
CREATE PROCEDURE `OrdenaMaisVendidos`()
BEGIN

select * from produtos_venda order by quantidade desc;

END //


DELIMITER //
CREATE PROCEDURE `TotalVendasPorData`()
BEGIN
select distinct data, sum(valor) as valor from venda group by data order by data desc;

END //






