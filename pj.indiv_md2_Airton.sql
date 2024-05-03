drop table Empresa;
create table Empresa(
	id_empresa int unique,
	Cnpj varchar(20),
	Nome_Empresa varchar (100),
	Ramo_Atuacao varchar(20)
);


drop table Tecnologia;
create table Tecnologia(
	id_tecnologia serial primary key,
	nome_tecnologia varchar(50),
	area varchar (100)
);

drop table Tecnologia_Utilizada;

create table Tecnologia_Utilizada(
		id_tecnologia_utilizada serial primary key,
		id_empresa int not null ,
		id_tecnologia INT NOT NULL,
		foreign key  (id_empresa) references Empresa(id_empresa),
		FOREIGN KEY (id_tecnologia) REFERENCES Tecnologia(id_tecnologia)
);


drop table Colaborador;
create table Colaborador(
	id_colaborador serial primary key,
	nome_colaborador varchar (200),
	cargo varchar(200),
	id_empresa int not null,
	foreign key (id_empresa) references Empresa(id_empresa)
);

-- Inserir dados na tabela Empresa
insert into Empresa (id_empresa, Cnpj, Nome_Empresa, Ramo_Atuacao) 
values 
    (1, '12345678901234', 'Empresa A', 'Tecnologia'),
    (2, '98765432109876', 'Empresa B', 'Saúde');

-- Inserir dados na tabela Tecnologia
insert into Tecnologia (nome_tecnologia, area)
values 
    ('Inteligência Artificial', 'Tecnologia'),
    ('Biomedicina', 'Saúde');

-- Inserir dados na tabela Tecnologia_Utilizada
insert into Tecnologia_Utilizada (id_empresa, id_tecnologia)
values 
    (1, 1),  -- Empresa A utiliza Inteligência Artificial
    (2, 2);  -- Empresa B utiliza Biomedicina

-- Inserir dados na tabela Colaborador
insert into Colaborador (nome_colaborador, cargo, id_empresa)
values 
    ('João Silva', 'Desenvolvedor', 1),  -- João Silva trabalha na Empresa A
    ('Maria Souza', 'Pesquisador', 2);    -- Maria Souza trabalha na Empresa B

-- Visualizar os dados da tabela Colaborador
select * from Colaborador;
select * from Empresa;
