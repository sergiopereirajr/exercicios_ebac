            # language: pt
            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Página de produto
            Dado que eu estou na página do produto x

            Cenário: Configuração com mais de 10 produtos
            Quando eu escolher a cor blue
            E o tamanho M
            E a quantidade 11
            Então não poderei adicionar o produto ao carrinho

            Cenário: Limpar a seleção
            Quando eu escolher a cor blue
            E o tamanho M
            E a quantidade 11
            E clicar no botão Limpar
            Então a configuração do produto deve voltar ao estado original

            Esquema do Cenário: Configuração válida de vários produtos
            Quando eu escolher a cor <cor>
            E o tamanho <tamanho>
            E a quantidade <quantidade>
            Então o produto pode ser adicionado no carrinho

            Exemplos:
            | cor      | tamanho | quantidade |
            | "blue"   | "XS"    | "4"        |
            | "blue"   | "S"     | "1"        |
            | "blue"   | "M"     | "5"        |
            | "blue"   | "L"     | "2"        |
            | "blue"   | "XL"    | "3"        |
            | "orange" | "XS"    | "5"        |
            | "orange" | "S"     | "3"        |
            | "orange" | "M"     | "2"        |
            | "orange" | "L"     | "4"        |
            | "orange" | "XL"    | "1"        |
            | "red"    | "XS"    | "2"        |
            | "red"    | "S"     | "4"        |
            | "red"    | "M"     | "1"        |
            | "red"    | "L"     | "5"        |
            | "red"    | "XL"    | "3"        |