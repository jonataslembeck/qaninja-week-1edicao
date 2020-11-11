#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenario: Login do Usuário
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "jonatas1@yahoo.com" e "pwd123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                 | senha |
            | jonatakkk@hotmail.com | teste |
            |                       |       |
            | jonatakkk@hotmail.com |       |
            |                       | teste |