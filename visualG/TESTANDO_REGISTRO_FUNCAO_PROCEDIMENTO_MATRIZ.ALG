Algoritmo "TESTANDO_REGISTRO_FUNCAO_PROCEDIMENTO_MATRIZ"

tipo informacoes = registro
   nome : caractere
   idade: inteiro
   sexo : caractere
   saldo : real
fimregistro

procedimento cadastroCliente(x : inteiro)
inicio
   escreval("Digite o nome do cliente")
   leia(cliente[x].nome)
   escreval("Digite a idade do cliente")
   leia(cliente[x].idade)
   escreval("Qual o sexo")
   leia(cliente[x].sexo)
   escreval("Digite o seu saldo")
   leia(cliente[x].saldo)

   escreval("Sua renda: ",calcularRenda(cliente[x].saldo))
fimprocedimento

funcao calcularRenda(x : real) : real
var
   renda : real
inicio
   se (x <= 500)entao
      renda <- x + (x * 0.15)
   senao
      renda <- x + (x * 0.22)
   fimse
   retorne renda
fimfuncao

procedimento teste(x: real)
inicio
se (x = 2) entao
   escreval("o número é 2")
senao
   escreval("o número é diferente de 2")
fimse
fimprocedimento

Var //variáveis globais
   cliente : vetor[1..2] de informacoes
   i: inteiro
Inicio

   cadastroCliente(1)
   cadastroCliente(2)

   escreval("Confira os clientes: ")
   para i de 1 ate 2 faca
      escreval("Cliente ",i)
      escreval(cliente[i].nome)
      escreval(cliente[i].idade)
      escreval(cliente[i].sexo)
      escreval(cliente[i].saldo)
   fimpara
   
   teste(2)
   teste(3)
Fimalgoritmo