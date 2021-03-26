Dado("que o usuário acessa a home do Fleury") do
  @home.carregar_home
end

Quando("ele acessar a área das unidades") do
  @home.acessar_unidades
end

Quando("pesquisar por uma unidade através do filtro de facilidade") do
  @unidades.realizar_pesquisa
end

Então("deverá ser exibido os resultados da busca") do
  @unidades.exibir_resultado
end

Então("o usuário poderá acessar a unidade desejada") do
  @unidades.acessar_unidades
end
