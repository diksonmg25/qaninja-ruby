require "httparty"

# require ---- funciona como o importar

module Helpers
  def delorean(email)

    # def - metodo que remove o usuario atraves do email - nome do metodo "delorean"

    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
  end
end
