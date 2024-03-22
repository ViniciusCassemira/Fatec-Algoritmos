Algoritmo "para_acumulador_time"

Var
   alturaMedia, alturaAlunos, altura, menorAltura, maiorAltura: real
   pessoas, i, j:inteiro
Inicio
   //j <- 0
   escreval("Quantas pessoas tem no time: ")
   leia(pessoas)

   para i de 1 ate pessoas faca
      escreva("Digite a altura do jogador",i,": ")
      leia(altura)
      alturaAlunos <- alturaAlunos + altura

      //enquanto j = 0 faca
      //   menorAltura <- altura
      //   maiorAltura <- altura
      //   j <- 1
      //fimenquanto
      
      se (i = 1) entao
         menorAltura <- altura
         maiorAltura <- altura
      fimse

      se (altura > maiorAltura) entao
         maiorAltura <- altura
      fimse
      
      se (altura < menorAltura) entao
         menorAltura <- altura
      fimse
      
   fimpara
   alturaMedia <- alturaAlunos / pessoas
   limpatela()
   escreval("A altura média dos jogadores é de ",alturaMedia)
   escreval("A maior altura do time é ",maiorAltura)
   escreval("A menor altura do time é ",menorAltura)

Fimalgoritmo