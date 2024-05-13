Algoritmo "trianguloMenu"

Var
   opcaoMenu : inteiro
Inicio
   repita
      escreval("1 - Triângulos")
      escreval("2 - Outra função")
      escreval("3 - Tabela")
      escreval("4 - Ajuda")
      escreval("0 - Sair")
      escreva("Digite sua opção: ")
      leia(opcaoMenu)
      escolha opcaoMenu

      caso 1
         limpatela()
         escreval("triângulos")
         escreval()
      caso 2
         limpatela()
         escreval("outra função")
         escreval()
      caso 3
         limpatela()
         escreval("tabela trigonométrica")
         escreval("---|30° |45° |60°")
         escreval("sen|1/2 |v2/2|v3/2")
         escreval("cos|v3/2|v2/2|1/2")
         escreval("tg |v3/3| 1  |v3")
         escreval()
      caso 4
         limpatela()
         escreval("ajuda")
         escreval()
      caso 0
         limpatela()
         escreval("Até a próxima")
         escreval()
      outrocaso
         limpatela()
         escreval("opção inexistente")
         escreval()
      fimescolha
   ate (opcaoMenu = 0)

Fimalgoritmo