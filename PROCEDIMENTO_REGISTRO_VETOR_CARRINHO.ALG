Algoritmo "procedimento_registro_vetor_carrinho"
//feito por vinícius, rei do universo observável

//-----------------------registro-----------------------
tipo Produto = registro
   nome: caractere
   quantidade, valorUnitario, valorTotal: real
fimregistro

//--------------------procedimentos---------------------
procedimento menu()
inicio
   escreval("")
   escreval("Escolha uma opção do menu")
   escreval("1 - Ver carrinho")
   escreval("2 - Add itens")
   escreval("3 - Atualizar Itens")
   escreval("4 - Excluir Item")
   escreval("99 - sair do sistema")
   escreval("")
   escreval("Sua opção: ")
   leia(opcao)
fimprocedimento

procedimento carrinho()
inicio
   limpatela()
   escreval("Posição | Nome | Quantidade | Valor Unitário | Valor Total")
   para i de 1 ate 10 faca
      se(itens[i].quantidade >= 1)entao
         escreval(i," ",itens[i].nome," ",itens[i].quantidade," ",itens[i].valorUnitario," ",itens[i].valorTotal)
      senao
         //escreval("") - deixaria espaços na tabela caso nao tenha item ali
      fimse
   fimpara
fimprocedimento

procedimento adicionarItem()
inicio
   limpatela()
   escreval("Digite o nome: ")
   leia(itens[posicaoAtual].nome)

   escreval("Digite a quantidade: ")
   leia(itens[posicaoAtual].quantidade)

   escreval("Digite o valor unitário: ")
   leia(itens[posicaoAtual].valorUnitario)

   itens[posicaoAtual].valorTotal <- itens[posicaoAtual].quantidade * itens[posicaoAtual].valorUnitario

   posicaoAtual <- posicaoAtual + 1

   limpatela()
   escreval("Produto adicionado com sucesso!")
fimprocedimento

procedimento modificarItem()
inicio
   limpatela()
   escreval("Digite a posição do item: ")
   leia(varTempPosicao)

   //modificando nome, quantidade e preço unitário
   escreval("Nome atual: ",itens[varTempPosicao].nome)
   escreval("Digite o novo nome: ")
   leia(itens[varTempPosicao].nome)

   escreval("Quantidade atual: ",itens[varTempPosicao].quantidade)
   escreval("Digite a nova quantidade: ")
   leia(itens[varTempPosicao].quantidade)

   escreval("Preço unitário atual: ",itens[varTempPosicao].valorUnitario)
   escreval("Digite o novo preço: ")
   leia(itens[varTempPosicao].valorUnitario)

   //modificando preço total
   itens[varTempPosicao].valorTotal <- itens[varTempPosicao].valorUnitario * itens[varTempPosicao].quantidade

   limpatela()
   escreval("Item atualizado com sucesso!")
fimprocedimento

procedimento apagarItem()
var
   j : inteiro //variável de controle, esqueci o nome técnico
inicio
   limpatela()
   escreval("Digite a posição do item que deseja excluir")
   leia(varTempPosicao)

   itens[varTempPosicao].nome <- ""
   itens[varTempPosicao].quantidade <- 0
   itens[varTempPosicao].valorUnitario <- 0
   itens[varTempPosicao].valorTotal <- 0

   posicaoAtual <- posicaoAtual -1 //posição atual volta uma casa pq excluímos um item, assim aproveitamos melhor o vetor
   limpatela()
   escreval("O item foi excluído com sucesso!")

   //substituir linhas vazias, caso uma linha com itens esteja abaixo
   //de uma vazia elas trocam de lugar
   para j de 1 ate 10 faca
      para i de 2 ate 10 faca
         //substituir essa gambiarra por uma variável que vai verificar se
         //naquela posição está preenchido ou não, por hora vai isso mesmo
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
fimprocedimento
//--------------------variáveis globais---------------
Var
   itens: vetor[1..10] de Produto
   opcao, i: inteiro
   varTempPosicao : inteiro //2 procedimento usam ela, preferi deixá-la global
   posicaoAtual : inteiro //cuida de qual posição da tabela será salvo

//------------------adivinhe oque é-------------------
Inicio
   posicaoAtual <- 1 //posicao inicial do vetor, onde os itens serão guardados

   repita
      menu()
      escolha opcao

      caso 1
         carrinho()
      caso 2
         adicionarItem()
      caso 3
         modificarItem()
      caso 4
         apagarItem()
      caso 99
         escreval("Até a próxima")
      outrocaso
         limpatela()

      fimescolha
   ate(opcao = 99)
Fimalgoritmo