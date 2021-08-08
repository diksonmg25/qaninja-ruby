#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso às playlists do Parodify

    @smoke
    Cenario: Login do usuário

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "diksonaraguari@yahoo.com.br" e "dr0768"
        Então devo ser redirecionado para a área logada

    Esquema do Cenario: Tentativa de login

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                       | senha  |
            | diksonaraguari@402.com.br   | dr0746 |
            |                             |        |
            | diksonaraguari@yahoo.com.br |        |
            | diksonaraguari@402.com.br   |        |







