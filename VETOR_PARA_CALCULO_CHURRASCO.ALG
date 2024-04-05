Algoritmo "VETOR_PARA_CALCULO_CHURRASCO"

Var
   item : vetor [1..5] de caracter
   itemQuantidade : vetor [1..5] de inteiro
   itemValorUnitario : vetor[1..5] de real
   itemValorTotal : vetor[1..5] de real

   custoTotalChurrasco : real
   custoPessoa : real

   quantidadePessoa: inteiro
   i : inteiro
Inicio
   para i de 1 ate 5 faca
      escreval("Item",i," de 5")
      escreva("Fale o nome do item: ")
      leia(item[i])

      escreva("Informe a quantidade desse item: ")
      leia(itemQuantidade[i])

      escreva("Informe o valor unitário desse item: ")
      leia(itemValorUnitario[i])

      itemValorTotal[i] <- itemQuantidade[i] * itemValorUnitario[i]
      custoTotalChurrasco <- custoTotalChurrasco + itemValorTotal[i]
      limpatela()
   fimpara
   
   //tabela dos itens
   escreval("Nome | Quantidade | Valor Unitário | Valor Total")
   escreval("------------------------------------------------")
   para i de 1 ate 5 faca
      escreval(item[i], itemQuantidade[i], itemValorUnitario[i], itemValorTotal[i])
   fimpara
   escreval("------------------------------------------------")
   escreval(" Valor total do churrasco: R$",custoTotalChurrasco)
   escreva(" Quantas pessoas vão participar do churrasco: ")
   leia(quantidadePessoa)
   
   custoPessoa <- custoTotalChurrasco / quantidadePessoa
   escreval()
   escreval("O preço que cada pessoa pagará no churrasco é R$",custoPessoa:2)
   
Fimalgoritmo