include RSpec::Matchers

class HomePage < SitePrism::Page
  set_url ENV["url_padrao"]

  # header
  element :logo, "#logo"
  element :btnCliente, "#button-desktop-client"
  element :btnMedico, "#button-desktop-medic"
  element :inputBusca, "#desktop-global-search"
  element :btnAgendarExame, "#test-schedule-modal-button"
  elements :linksMenu, "#button-title-desktop-header"

  def carregar_home
    load
    wait_until_logo_visible
    wait_until_btnCliente_visible
    wait_until_btnMedico_visible
    wait_until_inputBusca_visible
    wait_until_btnAgendarExame_visible
    wait_until_linksMenu_visible
  end

  def acessar_unidades
    linksMenu[3].click
    expect(page).to have_css(".active")
    expect(page).to have_current_path("/unidades")
  end
end
