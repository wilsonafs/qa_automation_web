include RSpec::Matchers

class UnidadesPage < SitePrism::Page

  # pesquisa
  element :inputEndereco, "#input-search-field"
  element :tabLista, "#segmented-item-view-list"
  element :tabMapa, "#segmented-item-view-map"
  element :filtroFacilidade, "#checkoox-select-facilities"
  elements :opcoesFacilidade, ".DRDNI"

  # resultado
  element :unidadeVilaMariana, "#unit-cell-vila-mariana"
  elements :labelFacilidadeCard, "[kind='default']"
  element :tituloCard, "#anchor-unit-cell-vila-mariana h3"
  element :abrirUnidade, "#button-see-on-map-2-vila-mariana"

  # unidade
  element :tituloUnidade, "div h1"
  element :btnMapa, "#button-see-on-map-unit-detail"

  def realizar_pesquisa
    wait_until_inputEndereco_visible
    wait_until_tabLista_visible
    wait_until_tabMapa_visible
    wait_until_filtroFacilidade_visible
    filtroFacilidade.click
    wait_until_opcoesFacilidade_visible
    opcoesFacilidade[0].click
  end

  def exibir_resultado
    expect(filtroFacilidade.text).to eq $facilidadeSelecionada
    wait_until_unidadeVilaMariana_visible
    expect(labelFacilidadeCard[2].text).to eq $facilidadeNoCard
    expect(tituloCard.text).to eq $unidadeSelecionada
  end

  def acessar_unidades
    abrirUnidade.click
    expect(page).to have_current_path("/unidades/vila-mariana")
    wait_until_btnMapa_visible
    expect(tituloUnidade.text).to eq $unidadeSelecionada
    expect(labelFacilidadeCard[2].text).to eq $facilidadeNoCard
  end
end
