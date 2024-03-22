Algoritmo "se_desconto"

Var

preco_produto, novo_preco, desconto:real
pagamento: inteiro

Inicio
    escreva("Qual o valor do produto: ")
    leia(preco_produto)
    escreval(" FORMAS DE PAGAMENTO")
    escreval("1-Cartão")
    escreval("2-Pix")
    escreval("3-Dinheiro")
    escreva("Forma escolhida: ")
    leia(pagamento)

    Se(pagamento = 1)então
      escreval("O preço do produto será de",preco_produto)
      escreval("Você não teve desconto ao pagar no cartão")
    Senão
      se(pagamento = 2) então
        desconto<- preco_produto * 0.06
        novo_preco <- preco_produto - desconto
        escreval("O preço do produto será de",novo_preco)
        escreval("Ao pagar no pix, você teve um desconto de R$:",preco_produto * 0.06)
      senão
        se(pagamento=3) então
          desconto <- preco_produto * 0.1
          novo_preco <- preco_produto - desconto
          escreval("O preço do produto será de", novo_preco)
          escreval("Ao pagar com dinheiro, você teve um desconto de R$:",preco_produto * 0.1)
        fimse
      fimse
    Fimse
Fimalgoritmo