Algoritmo "PARA_REPITA_ENQUANTO_MEDIAS_SALA"

Var
   i:inteiro
   nota1, nota2, media: real
Inicio
   para i de 1 ate 10 faca
      escreval("Vamos digitar as notas do aluno",i)

      repita
         escreva("Digite a primeira nota: ")
         leia(nota1)
      ate  (nota1 >= 0) e (nota1 <= 10)

      repita
         escreva("Digite a segunda nota: ")
         leia(nota2)
      ate (nota2 >=0 )e(nota2 <=10)
      
      media <-(nota1 + nota2)/2
      escreval("A média do aluno",i," foi: ",media)
      escreval()
   fimpara
Fimalgoritmo