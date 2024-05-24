Algoritmo "PROCEDIMENTO_IMC"

Var
imc : real

Procedimento calcular_imc()
var
   peso, altura : real
inicio
   escreval("Qual sua altura?")
   leia(altura)
   escreval("Qual seu peso?")
   leia(peso)
   imc <- peso / (altura * altura)
fimprocedimento

Inicio
   calcular_imc()
   escreval("Seu imc: ",imc)
   
   //vai dar erro
   //escreval("Sua altura: ",altura)

Fimalgoritmo