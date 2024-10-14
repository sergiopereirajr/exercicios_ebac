            # language: pt
            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto: Página de checkout
            Dado que eu estou na página de checkout

            Cenário: Preencher email com formato inválido
            Quando digitar o email "sergio.email.com"
            Então o sistema deve mostrar o erro "Email inválido"

            Cenário: Finalizar com campos vazios
            Quando eu deixar todos os campos sem preencher
            E clicar no botão Finalizar Compra
            Então o sistema deve mostrar o alerta "Preencher campos obrigatórios"

            Esquema do Cenário: Preencher multiplos usuários com campos obrigatórios
            Quando eu preencher o Nome <nome>
            E o Sobrenome <sobrenome>
            E selecionar o País <pais>
            E preencher o Endereço <endereco>
            E preencher a Cidade <cidade>
            E preencher o CEP <CEP>
            E preencher o Telefone <telefone>
            E preencher o Endereço de e-mail <email>
            E clicar em Finalizar compra
            Então a compra foi efetuada com sucesso

            Exemplos:
            | nome      | sobrenome   | pais       | endereco               | cidade      | CEP         | Telefone    | email                        |
            | "Sergio"  | "Pereira"   | "Portugal" | "Rua de Portugal 1"    | "Aveiro"    | "38222-222" | "999999999" | "sergio@email.com"           |
            | "Ana"     | "Silva"     | "Brasil"   | "Rua das Flores 10"    | "São Paulo" | "01001-000" | "988888888" | "ana.silva@email.com"        |
            | "João"    | "Oliveira"  | "Espanha"  | "Calle Mayor 25"       | "Madrid"    | "28001"     | "677777777" | "joao.oliveira@email.com"    |
            | "Mariana" | "Costa"     | "Portugal" | "Avenida Liberdade 50" | "Lisboa"    | "1200-001"  | "933333333" | "mariana.costa@email.com"    |
            | "Carlos"  | "Fernandes" | "França"   | "Rue de Rivoli 20"     | "Paris"     | "75001"     | "699999999" | "carlos.fernandes@email.com" |
            | "Lucia"   | "Santos"    | "Itália"   | "Via Roma 15"          | "Roma"      | "00100"     | "611111111" | "lucia.santos@email.com"     |