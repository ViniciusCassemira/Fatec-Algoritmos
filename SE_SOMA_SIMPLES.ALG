Algoritmo "se_aprovado_reprovado"

Var
   n1, n2, media:real

Inicio
   escreva("Digite 1º nota: ")
   leia(n1)
   escreva("Digite 2º nota: ")
   leia(n2)
   media<-(n1+n2)/2
   se (media >= 6)então
      escreval("Aprovado")
   senão
      escreval("Reprovado")
   fimse
   escreva("A média é:",media)

Fimalgoritmo