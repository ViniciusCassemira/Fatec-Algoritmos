Algoritmo "media"

Var
   i ,qntNotas:inteiro
   nota, soma, media:real

Inicio
      escreval("Quantas notas serão inseridas: ")
      leia(qntNotas)

      para i de 1 ate qntNotas faca
           escreva("Digite a nota", i,": ")
           leia(nota)
           soma <- soma + nota
      fimpara
      
      media <- soma / qntNotas
      escreval("A média das notas foi:",media)
Fimalgoritmo