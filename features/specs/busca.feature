#language: pt 

@dados
Funcionalidade: Acessar uma unidade Fleury através dos filtros de busca 

Cenário: Acessar uma unidade através do filtro de Facilidade 
    Dado que o usuário acessa a home do Fleury
    Quando ele acessar a área das unidades 
    E pesquisar por uma unidade através do filtro de facilidade 
    Então deverá ser exibido os resultados da busca 
    E o usuário poderá acessar a unidade desejada