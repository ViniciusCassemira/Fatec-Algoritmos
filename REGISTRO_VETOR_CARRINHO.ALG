Algoritmo "registro_vetor_carrinho"

//registro usado para armazenar as informações do item
tipo Produto = registro
   nome: caractere
   quantidade, valorUnitario, valorTotal: real
fimregistro

Var
   itens: vetor[1..10] de Produto
   opcao, i : inteiro
   varTempPosicao, varTempQuantidade : inteiro
   varTempNome: caractere
   varTempValorUnitario: real
   
   //cuida de qual posição da tabela será salvo
   posicaoAtual : inteiro
   
Inicio
   //setamos o valor 1 no início porque o primeiro item será armazenado na
   //primeira posição do vetor
   posicaoAtual <- 1

   repita
      repita
         escreval("")
         escreval("Escolha uma opção do menu")
         escreval("1 - Ver carrinho")
         escreval("2 - Add itens")
         escreval("3 - Atualizar Itens")
         escreval("4 - Excluir Item")
         escreval("0 - sair do sistema")
         escreval("")
         escreval("Sua opção: ")
         leia(opcao)
      ate(opcao >= 0)e(opcao <= 4)

      escolha opcao

      caso 1
         limpatela()
         escreval("Posição | Nome | Quantidade | Valor Unitário | Valor Total")
         para i de 1 ate 10 faca
            se(itens[i].quantidade >= 1)entao
               escreval(i," ",itens[i].nome," ",itens[i].quantidade," ",itens[i].valorUnitario," ",itens[i].valorTotal)
            senao
               escreval("")
            fimse
         fimpara

      caso 2
         limpatela()
         escreval("Digite o nome: ")
         leia(varTempNome)
         itens[posicaoAtual].nome <- varTempNome
         
         escreval("Digite a quantidade: ")
         leia(varTempQuantidade)
         itens[posicaoAtual].quantidade <- varTempQuantidade
         
         escreval("Digite o valor unitário: ")
         leia(varTempValorUnitario)
         itens[posicaoAtual].valorUnitario <- varTempValorUnitario
         
         itens[posicaoAtual].valorTotal <- varTempQuantidade * varTempValorUnitario
         
         posicaoAtual <- posicaoAtual + 1

         limpatela()
         escreval("Produto adicionado com sucesso!")
         

      caso 3
         limpatela()
         escreval("Digite a posição do item: ")
         leia(varTempPosicao)
         
         //modificando nome
         escreval("Nome atual: ",itens[varTempPosicao].nome)
         escreval("Digite o novo nome: ")
         leia(varTempNome)
         itens[varTempPosicao].nome <- varTempNome
         
         //modificando quantidade
         escreval("Quantidade atual: ",itens[varTempPosicao].quantidade)
         escreval("Digite a nova quantidade: ")
         leia(varTempQuantidade)
         itens[varTempPosicao].quantidade <- varTempQuantidade
         
         //modificando preço unitário
         escreval("Preço unitário atual: ",itens[varTempPosicao].valorUnitario)
         escreval("Digite o novo preço: ")
         leia(varTempValorUnitario)
         itens[varTempPosicao].valorUnitario <- varTempValorUnitario
         
         //modificando preço total
         itens[varTempPosicao].valorTotal <- itens[varTempPosicao].valorUnitario * itens[varTempPosicao].quantidade
         
         limpatela()
         escreval("Item atualizado com sucesso!")
      caso 4
         limpatela()
         escreval("Digite a posição do item que deseja excluir")
         leia(varTempPosicao)
         
         itens[varTempPosicao].nome <- ""
         itens[varTempPosicao].quantidade <- 0
         itens[varTempPosicao].valorUnitario <- 0
         itens[varTempPosicao].valorTotal <- 0
         
         //como excluímos um produto, voltamos uma posição,
         //dessa forma aproveitamos melhor o vetor
         posicaoAtual <- posicaoAtual -1
         limpatela()
         escreval("O item foi excluído com sucesso!")

      caso 0
         escreval("Até a próxima")

      fimescolha
   ate(opcao = 0)

Fimalgoritmo