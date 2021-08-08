Dado("que acesso a página de cadastro") do
  visit "/"
  click_on "EXPERIMENTE AGORA"
end

Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash

  # antes de começar o cadastro ------ executo a seguinte ação

  delorean user[:email]

  # função "delorean" recebe o email atraves da variavel "user"

  # que vai ser alvo de exclusao atraves do "httparty"

  #....................................................

  find("input[name*=email]").set user[:email]

  # find -- metodo do Capybara para buscar elemento

  # esse elemento pode ser html, css ou xpath

  # .................................................

  # Uso do "*-- asterisco -- Expressão regular

  # Para encontrar o elemento HTML atraves do "contains"

  # A busca fica da seguinte forma

  # elemento "input" cuja propriedade "name"

  # contém o valor "email"

  # .................................................

  find("input[placeholder='Sua senha secreta']").set user[:senha]
  find("input[placeholder='Confirme a senha']").set user[:senha_confirma]

  click_on "Cadastrar"
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end

Então("devo ver a mensagem: {string}") do |expect_message|
  alert = find(".message p")
  expect(alert.text).to eql expect_message

  # expect ----- usa o RSpec ---- validação

  # recebe o texto da variavel "alert"

  # e compara se o mesmo é igual ao texto da mensagem esperada

  # mensagem esperada ---- vem da variavel "expect_message"
end

Quando("acesso a página de cadastro") do
  steps %(
    Dado que acesso a página de cadastro
  )
end

Então("deve exibir o seguinte css: {string}") do |expect_css|
  expect(page).to have_css expect_css

  # expect ----- RSpec

  # page ---- objeto do Capybara

end
