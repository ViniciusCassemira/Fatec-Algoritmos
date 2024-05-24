Algoritmo "PROCEDIMENTO_CALCULADORA"

Var
   primeiro_numero, segundo_numero, res : real
   opcao: inteiro

procedimento somar()
inicio
   res <- primeiro_numero + segundo_numero
fimprocedimento

procedimento subtrair()
inicio
   res <- primeiro_numero - segundo_numero
fimprocedimento

procedimento multiplicar()
inicio
   res <- primeiro_numero * segundo_numero
fimprocedimento

procedimento dividir()
inicio
   res <- primeiro_numero / segundo_numero
fimprocedimento

Inicio
   repita
      escreval("CALCULADORA")
      escreval("[1] Somar")
      escreval("[2] Subtrair")
      escreval("[3] Multiplicar")
      escreval("[4] Dividir")
      escreva("Digite sua opção:")
      leia(opcao)
   ate (opcao>=1) e (opcao<=4)
   escolha opcao
   caso 1
      escreval("Digite o primeiro número: ")
      leia(primeiro_numero)
      escreval("Digite o segundo número: ")
      leia(segundo_numero)

      somar()
      escreval("Resultado: ",res)
   caso 2
      escreval("Digite o primeiro número: ")
      leia(primeiro_numero)
      escreval("Digite o segundo número: ")
      leia(segundo_numero)

      subtrair()
      escreval("Resultado: ",res)
   caso 3
      escreval("Digite o primeiro número: ")
      leia(primeiro_numero)
      escreval("Digite o segundo número: ")
      leia(segundo_numero)

      multiplicar()
      escreval("Resultado: ",res)
   caso 4
      escreval("Digite o primeiro número: ")
      leia(primeiro_numero)
      escreval("Digite o segundo número: ")
      leia(segundo_numero)

      dividir()
      escreval("Resultado: ",res)
   caso 0
   fimescolha

Fimalgoritmo