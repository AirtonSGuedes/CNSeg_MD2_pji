![image](https://github.com/AirtonSGuedes/CNSeg_MD2_pji/assets/113541135/7b75ae41-cde3-4658-8372-ff57f388cf49)


Modelo de Banco de Dados para Gerenciamento de Empresas, Tecnologias e Colaboradores
Este repositório contém o modelo de banco de dados para gerenciar informações sobre empresas, tecnologias, colaboradores e suas relações.

O modelo de dados é composto por 4 tabelas:

Empresa: Armazena informações sobre as empresas, incluindo CNPJ, nome e ramo de atuação.
Tecnologia: Armazena informações sobre as tecnologias utilizadas, incluindo nome e área de aplicação.
Tecnologia_Utilizada: Relaciona as empresas com as tecnologias que elas utilizam.
Colaborador: Armazena informações sobre os colaboradores das empresas, incluindo nome, cargo e empresa em que trabalha.
As tabelas possuem os seguintes campos:

Empresa:

id_empresa: Inteiro único, identificador da empresa (chave primária).
Cnpj: Varchar(20), CNPJ da empresa.
Nome_Empresa: Varchar(100), nome da empresa.
Ramo_Atuacao: Varchar(20), ramo de atuação da empresa.
Tecnologia:

id_tecnologia: Inteiro serial, identificador da tecnologia (chave primária).
nome_tecnologia: Varchar(50), nome da tecnologia.
area: Varchar(100), área de aplicação da tecnologia.
Tecnologia_Utilizada:

id_tecnologia_utilizada: Inteiro serial, identificador da relação entre empresa e tecnologia (chave primária).
id_empresa: Inteiro, identificador da empresa (chave estrangeira).
id_tecnologia: Inteiro, identificador da tecnologia (chave estrangeira).
Colaborador:

id_colaborador: Inteiro serial, identificador do colaborador (chave primária).
nome_colaborador: Varchar(200), nome do colaborador.
cargo: Varchar(200), cargo do colaborador.
id_empresa: Inteiro, identificador da empresa (chave estrangeira).
Benefícios do modelo de dados:

Normalização na terceira forma: Minimiza redundância de dados e melhora a consistência dos dados.
Integridade referencial: Assegurada por chaves estrangeiras.
Flexibilidade: Permite adicionar novas entidades e relacionamentos facilmente.
Facilidade de manutenção: Modelo de dados claro e compreensível.
Instruções de uso:

Crie as tabelas no seu banco de dados utilizando os scripts SQL fornecidos.
Popule as tabelas com dados de acordo com suas necessidades.
Utilize as consultas SQL para consultar, inserir, atualizar e excluir dados.
Exemplos de consultas SQL:

Selecionar todas as empresas:
SQL
SELECT * FROM Empresa;
Use o código com cuidado.
content_copy
Selecionar todas as tecnologias:
SQL
SELECT * FROM Tecnologia;
Use o código com cuidado.
content_copy
Selecionar todas as tecnologias utilizadas pela Empresa A:
SQL
SELECT t.nome_tecnologia, t.area
FROM Tecnologia_Utilizada tu
JOIN Tecnologia t ON tu.id_tecnologia = t.id_tecnologia
WHERE tu.id_empresa = 1;
Use o código com cuidado.
content_copy
Selecionar todos os colaboradores da Empresa B:
SQL
SELECT c.nome_colaborador, c.cargo
FROM Colaborador c
WHERE c.id_empresa = 2;
Use o código com cuidado.
content_copy
Observações:

Este modelo de dados é um ponto de partida e pode ser adaptado às suas necessidades específicas.
Certifique-se de ajustar os scripts SQL para o seu ambiente de banco de dados.
Para mais informações sobre o modelo de dados, consulte a documentação fornecida.
Esperamos que este modelo de banco de dados seja útil para você!
