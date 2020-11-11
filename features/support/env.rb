require "capybara"
require "capybara/cucumber"
require "allure-cucumber"

# Referencia o arquivo
require_relative "actions"
require_relative "helpers"

# Nome do módulo dentro do arquivo referenciado acima
World(Helpers)
World(Actions)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome # Configura o chrome para navagador do drive
  config.default_max_wait_time = 10 # Padrão é 2s para esperar elemento
  config.app_host = "http://parodify.qaninja.com.br" # URL padrão
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true # Limpa pasta logs antes de cada execução
end
