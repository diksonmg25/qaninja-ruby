require "allure-cucumber"
# importar a biblioteca do allure-cucumber

require "capybara"
require "capybara/cucumber"

require_relative "helpers"
require_relative "actions"

World(Helpers)

# World --- objeto do Ruby que carrega o módulo ------ nome do Módulo ---- "Helpers"
# fazendo com que todos os metodos
# dentro do modulo se tornem execuçoes nativas

World(Actions)

# ..........................................
# bloco de configuração do Capybara

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 60

  # ......................................
  # config... wait_time = 60

  # Eu estou falando para o Capybara que ele tem até 60 segundos para encontrar um elemento

  #............................................

  config.app_host = "http://parodify.qaninja.com.br"

  # definir a URL padrao do sistema

end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
