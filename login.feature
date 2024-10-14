            # language: pt
            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Acesso a página de login
            Dado que eu acesse a página de login da EBAC-SHOP

            Cenário: Login válido
            Quando eu digitar o usuáro "sergio@email.com"
            E a senha "senha@123"
            Então devo ser redirecionado a tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuáro "xxxyyyzzz@email.com"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuáro "sergio@email.com"
            E a senha "123455663gsdfgcb"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"
