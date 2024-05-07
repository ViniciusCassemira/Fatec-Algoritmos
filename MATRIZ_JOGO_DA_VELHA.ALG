Algoritmo "MATRIZ_JOGO_DA_VELHA"

Var
   posicao: vetor[1..3,1..3] de caracter
   matrixPreenchido: vetor[1..3,1..3] de inteiro
   linha, coluna : inteiro
   contador : inteiro
   icone: vetor[1..2] de caracter
   jogador,fimjogo,espacoPreenchido,vencedor : inteiro
Inicio

   //simbolos do jogo
   icone[1] <- "O"
   icone[2] <- "X"
   fimJogo <- 0

   jogador <- 1

   posicao[1,1] <-" "
   posicao[1,2] <-" "
   posicao[1,3] <-" "
   posicao[2,1] <-" "
   posicao[2,2] <-" "
   posicao[2,3] <-" "
   posicao[3,1] <-" "
   posicao[3,2] <-" "
   posicao[3,3] <-" "

   //jogo
   repita
      //tabuleiro
      escreval("Jogo da velha")
      escreval(" ",posicao[1,1]," | ",posicao[1,2]," | ",posicao[1,3])
      escreval("-----------")
      escreval(" ",posicao[2,1]," | ",posicao[2,2]," | ",posicao[2,3])
      escreval("-----------")
      escreval(" ",posicao[3,1]," | ",posicao[3,2]," | ",posicao[3,3])
      escreval("")

      //inputs
      escreval("Jogador:",jogador)
      escreval("Qual posição você quer colocar o ",icone[jogador])

      repita
         repita
            escreva("Informe a linha: ")
            leia(linha)
         ate(linha > 0)e(linha < 4)
         repita
            escreva("Informe a coluna: ")
            leia(coluna)
         ate(coluna > 0)e(coluna < 4)


         //conferir se o espaço foi preenchido
         se(contador >= 1)entao
            se(matrixPreenchido[linha,coluna] = 1)entao
               escreval("")
               escreval("Espaço preenchido")
               espacoPreenchido <- 1
            senao
               posicao[linha,coluna] <- icone[jogador]
               espacoPreenchido <- 0
               matrixPreenchido[linha,coluna] <- 1
            fimse
         senao
            posicao[linha,coluna] <- icone[jogador]
            espacoPreenchido <- 0
            matrixPreenchido[linha,coluna] <- 1
         fimse
      ate(espacoPreenchido = 0)

      limpatela()

      //atribuição
      contador <- contador + 1

      //verificacao linha
      se(posicao[1,1] = "O")e(posicao[1,2] = "O")e(posicao[1,3] = "O")entao
         vencedor <- 1
      fimse
      se(posicao[1,1] = "X")e(posicao[1,2] = "X")e(posicao[1,3] = "X")entao
         vencedor <- 1
      fimse

      se(posicao[2,1] = "O")e(posicao[2,2] = "O")e(posicao[2,3] = "O")entao
         vencedor <- 1
      fimse
      se(posicao[2,1] = "X")e(posicao[2,2] = "X")e(posicao[2,3] = "X")entao
         vencedor <- 1
      fimse

      se(posicao[3,1] = "O")e(posicao[3,2] = "O")e(posicao[3,3] = "O")entao
         vencedor <- 1
      fimse
      se(posicao[3,1] = "X")e(posicao[3,2] = "X")e(posicao[3,3] = "X")entao
         vencedor <- 1
      fimse

      //verificacao coluna

      se(posicao[1,1] = "O")e(posicao[2,1] = "O")e(posicao[3,1] = "O")entao
         vencedor <- 1
      fimse
      se(posicao[1,1] = "X")e(posicao[2,1] = "X")e(posicao[3,1] = "X")entao
         vencedor <- 1
      fimse

      se(posicao[1,2] = "O")e(posicao[2,2] = "O")e(posicao[3,2] = "O")entao
         vencedor <- 1
      fimse
      se(posicao[1,2] = "X")e(posicao[2,2] = "X")e(posicao[3,2] = "X")entao
         vencedor <- 1
      fimse

      se(posicao[1,3] = "O")e(posicao[2,3] = "O")e(posicao[3,3] = "O")entao
         vencedor <- 1
      fimse
      se(posicao[1,3] = "X")e(posicao[2,3] = "X")e(posicao[3,3] = "X")entao
         vencedor <- 1
      fimse

      //verificacao digonal
      se(posicao[1,1] = "O")e(posicao[2,2] = "O")e(posicao[3,3] = "O")entao
         vencedor <- 1
      fimse
      se(posicao[1,1] = "X")e(posicao[2,2] = "X")e(posicao[3,3] = "X")entao
         vencedor <- 1
      fimse

      se(posicao[1,3] = "O")e(posicao[2,2] = "O")e(posicao[3,1] = "O")entao
         vencedor <- 1
      fimse
      se(posicao[1,3] = "X")e(posicao[2,2] = "X")e(posicao[3,1] = "X")entao
         vencedor <- 1
      fimse

      se(vencedor = 1)entao
         escreval("O jogador",jogador," venceu o jogo")
         escreval(" ",posicao[1,1]," | ",posicao[1,2]," | ",posicao[1,3])
         escreval("-----------")
         escreval(" ",posicao[2,1]," | ",posicao[2,2]," | ",posicao[2,3])
         escreval("-----------")
         escreval(" ",posicao[3,1]," | ",posicao[3,2]," | ",posicao[3,3])
         escreval("")
         fimJogo <- 1
      senao
         fimJogo <- 0
      fimse

      se(contador = 9)e(vencedor = 0)entao
         escreval("O jogo empatou")
         escreval(" ",posicao[1,1]," | ",posicao[1,2]," | ",posicao[1,3])
         escreval("-----------")
         escreval(" ",posicao[2,1]," | ",posicao[2,2]," | ",posicao[2,3])
         escreval("-----------")
         escreval(" ",posicao[3,1]," | ",posicao[3,2]," | ",posicao[3,3])
         escreval("")
      fimse


      //se foi digitadi 9 vezes
      se(contador = 9)entao
         fimJogo <- 1
      fimse

      se(jogador = 1)entao //troca de jogador
         jogador <- 2
      senao
         jogador <- 1
      fimse


   ate (fimJogo = 1)
Fimalgoritmo