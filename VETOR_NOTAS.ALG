Algoritmo "VETOR_NOTAS"

Var
   nota : vetor[1..7] de real
   i : inteiro
Inicio

   Escreval("Informe a nota do primeiro aluno")
   Leia(nota[1])

   Escreval("Você digitou a nota: ", nota[1])

   // Abastecendo o vetor
   Para i de 1 até 7 Faça
      Escreva("Informe a nota da posição", i, ":")
      Leia(nota[i])
   Fimpara

   Escreval("Notas Informadas")

   // Mostrando valores com para
   Para i de 1 até 4 Faça
      Escreval("Nota da posição", i, " é:", nota[i])
   Fimpara

   // Fazendo sem o para
   Escreval("")
   Escreval("")
   Escreval("Nota da posição 1 é: ", nota[1])
   Escreval("Nota da posição 2 é: ", nota[2])
   Escreval("Nota da posição 3 é: ", nota[3])
   Escreval("Nota da posição 4 é: ", nota[4])

Fimalgoritmo