Algoritmo "repita_whatsapp"

Var//declarando as variáveis

   formaPagamento, escolhaPedido, escolhaMenu, produtosAdicionados, fezPedido: inteiro
   taxaEntrega, valorPedido, valorTotal, troco, dinheiro, precisaTroco: real
   mensagemFinalizarMenu:caracter
Inicio
   //Essa variável limita a quantidade de pedidos que podem ser feitos pelo
   //usuário. Apenas 1 por execução do programa
   fezPedido <- 0

   //Opção do menu que aparecerá até
   mensagemFinalizarMenu <- " Ir para o menu"

   //laço de repetição do tipo 'repita' ocorrerá até o usuário decidir
   //sair do programa. Até a opção escolhaMenu ser igual a 0
   repita
      escreval()
      escreval("SEJA BEM-VINDO(A) AO LOS POLLOS HERMANOS")
      escreval(" [1] - Realizar pedido")
      escreval(" [2] - Mostrar cardápio")
      escreval(" [3] - Acompanhar pedido")
      escreval(" [0] - Sair do atendimento")
      escreva("Sua opção:")
      leia(escolhaMenu)

      se(escolhaMenu = 1)entao
         limpatela()

         //Se o cliente não fez/finalizou seu pedido, a condição abaixo
         //irá ocorrer e o mesmo pooderá criar o seu pedido
         se(fezPedido = 0)entao

            //A repetição abaixo vai rolar até o usuário finalizar o pedido ou voltar para o menu
            repita
               escreval("PARA REALIZAR O PEDIDO: Informe o número")
               escreval("dos itens desejados um por vez.")
               escreval(" [0] - Mostrar o cardápio")
               escreval(" [99] -",mensagemFinalizarMenu)
               escreval("")
               escreval("Produtos adicionados: ",produtosAdicionados)
               escreval("sub-total R$:",valorPedido)
               escreva("Número do pedido:")
               leia(escolhaPedido) //opção que o usuáiro escolher

               //adiciona os valores dos lanches/bebidas ao valor do pedido
               se(escolhaPedido = 1)entao
                  valorPedido <- valorPedido + 22
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(escolhaPedido = 2)entao
                  valorPedido <- valorPedido + 18
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(escolhaPedido = 3)entao
                  valorPedido <- valorPedido + 26
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(escolhaPedido = 4)entao
                  valorPedido <- valorPedido + 11
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(escolhaPedido = 5)entao
                  valorPedido <- valorPedido + 5.5
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(produtosAdicionados >= 1)entao
                  mensagemFinalizarMenu <- " Finalizar pedido"
               fimse

               se (escolhaPedido = 0)entao //exibe o menu para o usuário
                  limpatela()
                  escreval("CARDÁPIO")
                  escreval(" [1] X-BACON - R$:22,00")
                  escreval(" [2] X-SALADA - R$:18,00")
                  escreval(" [3] X-TUDO - R$:26,00")
                  escreval(" [4] CocaCola 2L - R$:11,00")
                  escreval(" [5] CocaCola 600ml - R$:5,50")
                  escreval()
               senao //caso o usuário não digite nenhuma das opções existentes,
                  //o terminal será limpo, evitando informações desnecessárias
                  limpatela()
               fimse
            ate (escolhaPedido = 99)
            limpatela() //após o pedido ser finalizado ou o usuário voltar ao menu, o terminal é limpo

            //Caso algum produto já tenha sido adicionado,
            //o algoritmo interpreta que o pedido foi concluído
            se(produtosAdicionados >= 1)entao
               escreval(" PEDIDO FEITO COM SUCESSO")
               fezPedido <- 1 //nao deixará o usuário criar um novo pedido
            fimse

         senao //caso a variável fezPedido for diferente de 0...
            limpatela()
            escreval(" VOCÊ JÁ REALIZOU O SEU PEDIDO.")
         fimse
      fimse

      se(escolhaMenu = 2)entao //Mostra o cardápio para o usuário
         limpatela()
         escreval("CARDÁPIO")
         escreval(" [1] X-BACON - R$:22,00")
         escreval(" [2] X-SALADA - R$:18,00")
         escreval(" [3] X-TUDO - R$:26,00")
         escreval(" [4] CocaCola 2L - R$:11,00")
         escreval(" [5] CocaCola 600ml - R$:5,50")
      fimse

      se(escolhaMenu = 3) entao  //Acompanha/mostra o status do pedido
         limpatela()

         se(fezPedido = 1)entao //caso o pedido já tenha sido realizado
            taxaEntrega <- valorPedido * 0.1 //cálculo da taxa de entrega
            valorTotal <- valorPedido + taxaEntrega //cálculo do valor total

            //Mostra as informações do pedido no terminal
            escreval("Total de itens adicionados:",produtosAdicionados)
            escreval("Sub-total R$:",valorPedido)
            escreval("Tarifa de entrega R$:",taxaEntrega)
            escreval("Valor total do pedido R$:",valorTotal)
            escreval("")

            repita //'força' o usuário a selecionar uma forma de pagamento
               escreval("FORMAS DE PAGAMENTO")
               escreval(" [1] - Dinheiro")
               escreval(" [2] - Cartão")
               escreval(" [3] - Pix")
               escreva("Sua forma de pagamento:")
               leia(formaPagamento) //armazena a opção de pagamento do usuário
               
               //limpa a tela se a opção não for uma existente
               se (formaPagamento < 1) ou (formaPagamento > 3)entao
                  limpatela()
               fimse
            ate (formaPagamento > 0)e(formaPagamento < 4)//fim do laço repita

            se(formaPagamento = 1)entao
               limpatela()
               repita //'força' o usuário a selecionar uma opção válida
                  escreval("Precisa de troco?")
                  escreval(" [1] - Preciso")
                  escreval(" [0] - Não preciso")
                  escreva("Sua opção: ")
                  leia(precisaTroco)
                  se(precisaTroco < 0)ou(precisaTroco > 1)entao
                     limpatela()
                  fimse
               ate (precisaTroco > -1) e (precisaTroco < 2)//fim da repetição

               //caso o usuário precise de troco, um sistema para calcular
               //o troco do mesmo irá rodar
               se (precisaTroco = 1) entao
                  escreval("Quanto voce tem em dinheiro: ")
                  leia(dinheiro)
                  enquanto dinheiro < valorTotal faca //quando o dinheiro for insuficiente
                     limpatela()
                     escreval("SEU DINHEIRO NÃO É SUFICIENTE PARA")
                     escreval("PAGAR O PEDIDO, ARRUME MAIS.")
                     escreval()
                     escreval("Quanto você tem em dinheiro: ")
                     leia(dinheiro)
                  fimenquanto
                  
                  troco <- dinheiro - valorTotal  //calculo do troco
                  limpatela()
                  escreval("Nosso entregador irá levar o seu troco que é de R$:",troco)
                  escreval("junto com o seu pedido, quando estiver pronto.")
               senao //caso o cliente não precise de troco...
                  escreval()
                  escreval("Quando estiver pronto, nosso entregador levará seu pedido.")
               fimse
            fimse

            se(formaPagamento = 2)entao //se a forma de pagamento for cartão...
               limpatela()
               escreval("Quando estiver pronto, nosso entregador levará")
               escreval("seu pedido e a maquina de cartão.")
            fimse

            se(formaPagamento = 3)entao //se a forma de pagamento for PIX...
               limpatela()
               escreval("Chave pix: 222320001-2")
               escreval("use ela para efetuar o pagamento no valor de R$:",valorTotal)
               escreval("Quando estiver pronto, nosso entregador levará seu pedido.")
            fimse

         senao //caso o usuário ainda não tenha efetuado o pedido
            escreval(" VOCÊ AINDA NÃO REALIZOU O SEU PEDIDO!")
            escreval(" VOLTE AQUI APÓS REALIZÁ-LO")
         fimse
      fimse
      //caso o usuário digite uma opção inválida, o terminal é limpo
      se(escolhaMenu < 0) ou (escolhaMenu > 3)entao
         limpatela()
      fimse

   ate (escolhaMenu = 0)
   //Após a condição do repita for correspondida e sua repetição terminar,
   //uma ùltima interação com o usuário ocorrerá antes do programa encerrar
   escreval("VOLTE SEMPRE AO LOS POLLOS HERMANOS")
Fimalgoritmo