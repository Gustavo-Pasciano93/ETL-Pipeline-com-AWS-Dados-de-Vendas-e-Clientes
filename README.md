# Projeto de Engenharia de Dados: Vendas e Clientes

## Descrição

Este projeto foi desenvolvido com o objetivo de demonstrar habilidades e práticas de engenharia de dados, como a criação de pipelines de ETL, integração de dados de diferentes fontes, manipulação e transformação de dados, além de integração com banco de dados MySQL e deployment em AWS EC2.

### Funcionalidades:
1. **Carregamento de dados**: Carrega dados de arquivos CSV e JSON.
2. **Transformação de dados**: Converte dados de JSON para CSV e combina dados de diferentes fontes.
3. **Processamento e limpeza**: Limpeza de dados com remoção de colunas desnecessárias.
4. **Armazenamento de dados**: Insere dados em um banco de dados MySQL e realiza operações de leitura e escrita.
5. **Deployment**: O projeto foi deployado em uma instância AWS EC2 com todas as dependências instaladas.

## Tecnologias Utilizadas
- Python
- Pandas
- MySQL
- AWS EC2
- GitHub
  

## Scripts do Projeto

### 1. **DataProcessor (Processamento de Dados)**

A classe `DataProcessor` é responsável pelo processamento dos dados de vendas e clientes. Ela inclui métodos para:
- Carregar dados de arquivos CSV e JSON.
- Converter JSON para CSV.
- Combinar dados de vendas e clientes em um único DataFrame.
- Remover colunas desnecessárias e salvar os dados.

Exemplo de uso:

processor = DataProcessor(path_vendas, path_clientes)
processor.carregar_dados()
processor.salvar_json_como_csv(path_clientes_csv)
df_combined = processor.combinar_dados(path_combined)
processor.remover_coluna(df_combined, 'Nome', path_updated)






### 2. MySQLDataLoader (Carregamento para MySQL)**

A classe MySQLDataLoader lida com a conexão e manipulação de dados em um banco de dados MySQL. Ela realiza:
- Conexão com o banco de dados.
- Criação de bancos de dados e tabelas.
- Inserção de dados do CSV para as tabelas.
- Fechamento da conexão com o banco de dados.

 Exemplo de uso:

loader = MySQLDataLoader(host='localhost', user='usuario', password='senha')
loader.connect_to_database()
loader.create_database('vendas')
loader.create_table('dados_vendas')
loader.insert_data_from_csv(csv_path, 'dados_vendas')
loader.close_connection()



## Como executar o projeto

### Clone este repositório**

git clone https://github.com/usuario/projeto-vendas.git](https://github.com/Gustavo-Pasciano93/ETL-Pipeline-com-AWS-Dados-de-Vendas-e-Clientes
cd ETL-Pipeline-com-AWS-Dados-de-Vendas-e-Clientes

### Instale as dependências:**  Se ainda não tiver o ambiente configurado, crie um ambiente virtual e instale as dependências:
python -m venv venv
source venv/bin/activate  # No Windows use `venv\Scripts\activate`
pip install -r requirements.txt

### Configuração do MySQL**
Crie um banco de dados no MySQL (se ainda não existir).
Configure as credenciais do banco de dados no script MySQLDataLoader.


### Execute os Scripts**
python script_data_processor.py
python script_mysql_loader.py

## Deployment na AWS

O projeto foi deployado em uma instância EC2 da AWS.

### Requisitos**

Este projeto depende das seguintes bibliotecas:

pandas
mysql-connector-python
Instale as dependências usando o requirements.txt:

Copiar código
pip install -r requirements.txt






