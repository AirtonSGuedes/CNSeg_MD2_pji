![image](https://github.com/AirtonSGuedes/CNSeg_MD2_pji/assets/113541135/7b75ae41-cde3-4658-8372-ff57f388cf49)

# Modelo de Banco de Dados para Gerenciamento de Empresas, Tecnologias e Colaboradores

Este repositório contém o modelo de banco de dados para gerenciar informações sobre empresas, tecnologias, colaboradores e suas relações.

O modelo de dados é composto por 4 tabelas:

- **Empresa:** Armazena informações sobre as empresas, incluindo CNPJ, nome e ramo de atuação.
- **Tecnologia:** Armazena informações sobre as tecnologias utilizadas, incluindo nome e área de aplicação.
- **Tecnologia_Utilizada:** Relaciona as empresas com as tecnologias que elas utilizam.
- **Colaborador:** Armazena informações sobre os colaboradores das empresas, incluindo nome, cargo e empresa em que trabalha.

As tabelas possuem os seguintes campos:

**Empresa:**
- id_empresa: Inteiro único, identificador da empresa (chave primária).
- Cnpj: Varchar(20), CNPJ da empresa.
- Nome_Empresa: Varchar(100), nome da empresa.
- Ramo_Atuacao: Varchar(20), ramo de atuação da empresa.

**Tecnologia:**
- id_tecnologia: Inteiro serial, identificador da tecnologia (chave primária).
- nome_tecnologia: Varchar(50), nome da tecnologia.
- area: Varchar(100), área de aplicação da tecnologia.

**Tecnologia_Utilizada:**
- id_tecnologia_utilizada: Inteiro serial, identificador da relação entre empresa e tecnologia (chave primária).
- id_empresa: Inteiro, identificador da empresa (chave estrangeira).
- id_tecnologia: Inteiro, identificador da tecnologia (chave estrangeira).

**Colaborador:**
- id_colaborador: Inteiro serial, identificador do colaborador (chave primária).
- nome_colaborador: Varchar(200), nome do colaborador.
- cargo: Varchar(200), cargo do colaborador.
- id_empresa: Inteiro, identificador da empresa (chave estrangeira).

Benefícios do modelo de dados:

- **Normalização na terceira forma:** Minimiza redundância de dados e melhora a consistência dos dados.
- **Integridade referencial:** Assegurada por chaves estrangeiras.
- **Flexibilidade:** Permite adicionar novas entidades e relacionamentos facilmente.
- **Facilidade de manutenção:** Modelo de dados claro e compreensível.

Instruções de uso:

1. Crie as tabelas no seu banco de dados utilizando os scripts SQL fornecidos.
2. Popule as tabelas com dados de acordo com suas necessidades.
3. Utilize as consultas SQL para consultar, inserir, atualizar e excluir dados.

Exemplos de consultas SQL:

- Selecionar todas as empresas:
```sql
SELECT * FROM Empresa;
