Before do
  page.current_window.resize_to(1_366, 800)

  @home = HomePage.new
  @unidades = UnidadesPage.new
end

After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, "_").tr("/", "_")
  if scenario.failed?
    tirar_foto(scenario_name.downcase!, "teste falhou")
  else
    tirar_foto(scenario_name.downcase!, "teste passou")
  end
end
