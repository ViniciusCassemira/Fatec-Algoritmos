Algoritmo "ALTERAR_VALOR_VETOR"
//criar um vetor e tentar alterar seus valores
//Feito por Vinícius, o rei de todos
Var
   nome: vetor [1..5] de caractere
   idade: vetor [1..5] de inteiro
   i, opcaoMenu, varTemp, alteracao: inteiro

Inicio
   opcaoMenu <- 0
   para i de 1 ate 5 faca
      escreva("Digite o",i,"º nome: ")
      leia(nome[i])
      escreva("Idade dessa pessoa: ")
      leia(idade[i])

      se(i = 5)entao
         limpatela()
         escreval("RESULTADOS")
         para i de 1 ate 5 faca
            escreval("Nome:",nome[i]," | Idade:",idade[i])
         fimpara
         escreval()
      fimse
   fimpara

   repita
      alteracao <- 0
      varTemp <- 0

      escreval("DESEJA ALTERAR OS DADOS QUE FORAM ESCRITOS?")
      escreval("[0] Alterar dados")
      escreval("[1] Mostrar dados")
      escreval("[2] Confirmar")
      leia(opcaoMenu)

      escolha (opcaoMenu)
      caso 0
         limpatela()
         escreval("DADOS ATUAIS")
         para i de 1 ate 5 faca
            escreval("Nome:",nome[i]," | Idade:",idade[i])
         fimpara
         escreval()
         
         repita
            enquanto (varTemp <= 0) ou (varTemp > 5)faca
               escreval("Digite a posição da pessoa que deseja alterar")
               leia(varTemp)
            fimenquanto
            limpatela()
            escreval("DADOS ATUAIS DA PESSOA SELECIONADA")
            escreval("Nome:",nome[varTemp]," | Idade:",idade[varTemp])

            escreval("Altere o nome: ")
            leia(nome[varTemp])
            escreval("Altere a idade: ")
            leia(idade[varTemp])

            limpatela()
            escreval("DADOS MODIFICADOS COM SUCESSO!")
            escreval()

            alteracao <- 1

         ate (alteracao = 1)
      caso 1
         limpatela()
         escreval("DADOS ATUAIS")
         para i de 1 ate 5 faca
            escreval("Nome:",nome[i]," | Idade:",idade[i])
         fimpara
         escreval()

      caso 2
         escreval()
         escreva("DADOS SALVOS COM SUCESSO")
      fimescolha
   ate (opcaoMenu = 2)


Fimalgoritmo