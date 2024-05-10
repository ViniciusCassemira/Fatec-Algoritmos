Algoritmo "REGISTRO_CHURRASCO"
//Versão do exercício do churrasco melhorado, aplicando os registros neles

   tipo produto = registro
      item : caractere
      quantidade : inteiro
      valorUnitario : real
      valorTotal : real
   fimregistro

Var
   ingrediente : vetor[1..5] de produto
   
   custoTotalChurrasco : real
   custoPessoa : real
   quantidadePessoa: inteiro
   i : inteiro
Inicio
   para i de 1 ate 5 faca
      escreval("Item",i," de 5")
      escreva("Fale o nome do item: ")
      leia(ingrediente[i].item)

      escreva("Informe a quantidade desse item: ")
      leia(ingrediente[i].quantidade)

      escreva("Informe o valor unitário desse item: ")
      leia(ingrediente[i].valorUnitario)

      ingrediente[i].valorTotal <- ingrediente[i].quantidade * ingrediente[i].valorUnitario
      custoTotalChurrasco <- custoTotalChurrasco + ingrediente[i].valorTotal
      limpatela()
   fimpara

   escreval("ITENS ADICIONADOS")
   para i de 1 ate 5 faca
      escreval("Item:",ingrediente[i].item,"  Quantidade:",ingrediente[i].quantidade,"  preço/item:R$",ingrediente[i].valorUnitario,"  Total:R$",ingrediente[i].valorTotal)
   fimpara
   escreval("")
   escreval("Valor total do churrasco: R$",custoTotalChurrasco)
   escreva("Quantas pessoas vão participar do churrasco: ")
   leia(quantidadePessoa)

   custoPessoa <- custoTotalChurrasco / quantidadePessoa
   escreval()
   escreval("O preço que cada pessoa pagará no churrasco é R$",custoPessoa:2)
Fimalgoritmo