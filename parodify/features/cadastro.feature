#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | diksonbrasil@bol.com.br |
            | senha          | dr0768                  |
            | senha_confirma | dr0768                  |
        Então devo ser redirecionado para a área logada

    Esquema do Cenario: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                   | senha  | confirma_senha | mensagem_saida                       |
            |                         | dr0768 | dr0768         | Oops! Informe seu email.             |
            | diksonbrasil@bol.com.br |        |                | Oops! Informe sua senha.             |
            | diksonbrasil@bol.com.br | dr0768 | dr0736         | Oops! Senhas não são iguais.         |
            |                         |        |                | Oops! Informe seu email e sua senha. |

    @temp
    Cenario: Validação do campo email

        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"


