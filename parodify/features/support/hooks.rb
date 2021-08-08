# Gancho de teste que é executado antes do cenário
Before do
  # implementar o redimensionamento da tela no computador

  # para executar os testes automatizados

  page.current_window.resize_to(1440, 900)

  # redimensionar o tamanho da janela
  # e sempre trabalhar com um padrao minimo
end

# Gancho de teste que é executado depois do cenário

After do
  shot = page.save_screenshot("logs/temp_shot.png")

  # --- variavel "shot" recebe o page - objeto do Capybara

  # save_screenshot("logs/temp_shot.png")

  # o screenshot sera colocado dentro da pasta "logs"

  # e o nome do arquivo sera "shot.png"

  Allure.add_attachment(

    # metodo "add_attachment"

    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(shot),

    # Pega o caminho do arquivo do screenshot dentro do Disco C

    # E abre esse arquivo dentro do Ruby

    # E passa esse arquivo aberto para o argumento "source"

    # do metodo "add_attachment"
  )
end
