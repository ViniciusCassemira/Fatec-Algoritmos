Algoritmo "ENQUANTO_TABUADA_SIMPLES"

Var
   i, numero, multiplicadorFinal:inteiro
   
Inicio
      escreva("Digite um numero: ")
      leia(numero)
      
      escreva("Digite o multiplicador:")
      leia(multiplicadorFinal)
      i <- 1
      limpatela()
      escreval(" TABUADA DO",numero)
      escreval("")
      
      enquanto i <= multiplicadorFinal faca
               escreval(numero, " x ", i, " = ",numero * i)
               i <- i + 1
      fimenquanto

Fimalgoritmo