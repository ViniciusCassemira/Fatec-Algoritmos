Algoritmo "registro_vetor_carrinho"
//
//

//registro usado para armazenar as informa��es do item
tipo Produto = registro
   nome: caractere
   quantidade, valorUnitario, valorTotal: real
fimregistro

Var
   itens: vetor[1..10] de Produto
   opcao, i,j : inteiro
   varTempPosicao, varTempQuantidade : inteiro
   varTempNome: caractere
   varTempValorUnitario: real

   //cuida de qual posi��o da tabela ser� salvo
   posicaoAtual : inteiro

Inicio
   //setamos o valor 1 no in�cio porque o primeiro item ser� armazenado na
   //primeira posi��o do vetor
   posicaoAtual <- 1

   repita
      repita
         escreval("")
         escreval("Escolha uma op��o do menu")
         escreval("1 - Ver carrinho")
         escreval("2 - Add itens")
         escreval("3 - Atualizar Itens")
         escreval("4 - Excluir Item")
         escreval("0 - sair do sistema")
         escreval("")
         escreval("Sua op��o: ")
         leia(opcao)
      ate(opcao >= 0)e(opcao <= 4)

      escolha opcao

      caso 1
         limpatela()
         escreval("Posi��o | Nome | Quantidade | Valor Unit�rio | Valor Total")
         para i de 1 ate 10 faca
            se(itens[i].quantidade >= 1)entao
               escreval(i," ",itens[i].nome," ",itens[i].quantidade," ",itens[i].valorUnitario," ",itens[i].valorTotal)
            senao
               //escreval("") deixa espa�os na tabela caso nao tenha item ali
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

         escreval("Digite o valor unit�rio: ")
         leia(varTempValorUnitario)
         itens[posicaoAtual].valorUnitario <- varTempValorUnitario

         itens[posicaoAtual].valorTotal <- varTempQuantidade * varTempValorUnitario

         posicaoAtual <- posicaoAtual + 1

         limpatela()
         escreval("Produto adicionado com sucesso!")


      caso 3
         limpatela()
         escreval("Digite a posi��o do item: ")
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

         //modificando pre�o unit�rio
         escreval("Pre�o unit�rio atual: ",itens[varTempPosicao].valorUnitario)
         escreval("Digite o novo pre�o: ")
         leia(varTempValorUnitario)
         itens[varTempPosicao].valorUnitario <- varTempValorUnitario

         //modificando pre�o total
         itens[varTempPosicao].valorTotal <- itens[varTempPosicao].valorUnitario * itens[varTempPosicao].quantidade

         limpatela()
         escreval("Item atualizado com sucesso!")
      caso 4
         limpatela()
         escreval("Digite a posi��o do item que deseja excluir")
         leia(varTempPosicao)

         itens[varTempPosicao].nome <- ""
         itens[varTempPosicao].quantidade <- 0
         itens[varTempPosicao].valorUnitario <- 0
         itens[varTempPosicao].valorTotal <- 0

         //como exclu�mos um produto, voltamos uma posi��o,
         //dessa forma aproveitamos melhor o vetor
         posicaoAtual <- posicaoAtual -1
         limpatela()
         escreval("O item foi exclu�do com sucesso!")

         //organizar vetor, substituir linhas vazias
         //caso uma linha com itens esteja abaixo de uma vazia
         //elas trocam de lugar
         para j de 1 ate 10 faca
            para i de 2 ate 10 faca
               //substituir essa gambiarra por uma vari�vel que vai verificar
               //se naquela posi��o do vetor est� preenchido ou n�o, por hora
               //vai ser essa gambiarra
               se(itens[i].quantidade >= 1)e(itens[i-1].quantidade = 0)entao
                  itens[i-1] <- itens[i]
                  itens[i].nome <- ""
                  itens[i].quantidade <- 0
                  itens[i].valorUnitario <- 0
                  itens[i].valorTotal <- 0
               senao

               fimse
            fimpara
         fimpara

      caso 0
         escreval("At� a pr�xima")

      fimescolha
   ate(opcao = 0)

Fimalgoritmo