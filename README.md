# Goomer-database
1. Criar database goomer e importar o banco.

# Sobre
  1. A tabela restaurante armazena os dados dos restaurantes, note que existe uma flag para verificar se o mesmo esta aberto ou não.
  2. A tabela produto representa os produtos dos restaurantes.
  * A coluna produto_restaurante atua como uma chave estrangeira.
  * A coluna produto_tipo atua como uma chave estrangeira para a tabela tipo.
  
  3. A tabela tipo existe somente para referenciar qual é o tipo de produto (Almoço, Bebida etc).
  4. A tabela semana refere-se aos dias da semana e será linkada na tabela horario.
  5. A tabela horario refere-se aos horarios dos restaurantes (Conforme os requisitos, relação de NxN).
  * A coluna horario_restaurante é uma chave estrangeira para os restaurantes.
  * A coluna horario_semana é uma chave para indicar de qual dia da semana é esse horario.

# Como melhorar o banco
  1. Implementar de fato às chaves estrangeiras, nesse momento apenas está simbolizando o link.
