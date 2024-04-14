<h1>Band Perfumaria</h1>
</br>
<h2>Modelagem de Banco de Dados Relacional</h2>
</br>
<h3><strong>Descrição</strong></h3></br>
Projeto de sistema de banco de dados desenvolvido para gerenciar as operações da Band perfumaria. Este repositório contém a modelagem do banco de dados relacional, scripts SQL para criação e manipulação das tabelas.
</br>
<h3><strong>Funcionalidades</strong></h3></br>
<strong>Gestão de Estoque:</strong> Controle de produtos, categorias e disponibilidade.</br>
<strong>Gestão de Clientes:</strong> cadastros e controle de clientes.</br>
<strong>Sistema de Vendas:</strong> Gerenciamento de vendas e registros de transações.</br>
<strong>Sistema de Pontuação de Clientes:</strong> Pontuação baseada nas compras para fidelização de clientes.</br>
</br>
<h3>Ferramenta utilizada</h3></br>
PostgreSQL
<h3>Modelagem Lógica</h3>
 Para entender os requisitos do banco de dados, foi preciso identificar as entidades relacionadas ao negócio band perfumaria. Para o projeto, vamos considerar as seguintes entidades:</br>
 Produtos;</br>
 Clientes;</br>
 Vendas;</br>
 Itens das vendas;</br>
 Pontuação;</br></br>
 Produtos: Representam os perfumes vendidos.</br>
 Clientes: Pessoas que compram produtos.</br>
 Vendas: Transações de compra de produtos pelos clientes.</br>
 Itens de Venda: Detalhes dos produtos em uma venda.</br>
 Pontuação: Sistema de recompensa para clientes baseado em compras.</br>
 Categorias de Produto: Classificação dos produtos.</br>
 </br>
 <h3>Diagrama</h3>
 <br>
 <img width="600" src="https://github.com/fzta492/bandperfumaria/assets/76072907/727c5f2e-38d0-4dd9-a221-2c27e8a086a2"></br>
 <h3>> > > Modelagem física</h3></br>
 Para criar as entidades descritas, foram usado os seguintes comandos na ferramenta PostgreSQL. </br>
 <img width="600" title src="https://github.com/fzta492/bandperfumaria/assets/76072907/98d9304b-5d66-41a6-a528-abddd8b97016">
 </br>
 Disponivel em:  <h4><a href="https://github.com/fzta492/bandperfumaria/blob/main/banco%20de%20dados/1_SQL_cria%C3%A7%C3%A3o_da_base_de_dados.sql"> criação da base de dados.sql </a></h4></br>
 <h4>População do DB</h4></br>
 <img width:="600" src="https://github.com/fzta492/bandperfumaria/assets/76072907/81f840d8-11dd-4bea-83e3-d2710b83189d"></br>
 Disponivel em:  <h4><a href="https://github.com/fzta492/bandperfumaria/blob/main/banco%20de%20dados/2_SQL_popula%C3%A7%C3%A3o_do_banco_de_dados.sql"> população da base de dados.sql </a></h4></br>
<h3>Conclusão do projeto</h3></br>
Ao desenvolver o sistema de gerenciamento de banco de dados para a Band Perfumaria, procurei criar uma solução prática e eficaz para apoiar a operação de uma loja de perfumes. O uso do PostgreSQL permitiu a criação de um banco de dados relacional focado em facilitar a gestão de estoque, vendas, itens de vendas e o engajamento de clientes através de um sistema de pontos, onde cada real gasto é convertido em pontos de fidelidade.
</br>
Optei por uma abordagem direta e menos técnica, evitando o uso de triggers para simplificar o sistema. Isso torna mais fácil para quem estiver administrando ou atualizando o banco de dados no futuro. A documentação detalhada que preparei no GitHub visa ajudar qualquer pessoa a entender e modificar o sistema conforme necessário.
</br>
Espero que este projeto seja um recurso útil para outros e inspire mais pessoas a explorar e implementar sistemas de banco de dados que apoiam as operações comerciais de maneira eficiente. Estou grato a todos que me ajudaram de alguma forma e aprendi muito com este projeto.
</br>


