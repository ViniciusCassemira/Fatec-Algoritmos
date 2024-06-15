Algoritmo "URNA_ELETRONICA"

tipo
   candidato = registro
      nome, partido : caractere
      numero, votoRecebido : inteiro
   fimregistro

procedimento votar()
var
   i, varVotoBranco : inteiro
   voto: inteiro

inicio
   repita
      limpatela()
      escreval("Deseja votar em branco?")
      escreval("1. Sim")
      escreval("2. Não")
      leia(varVotoBranco)
   ate (varVotoBranco = 1) ou (varVotoBranco = 2)

   se (varVotoBranco = 1)entao
      limpatela()
      escreval("Voto em branco registrado")
      escreval()
      votoBranco <- votoBranco + 1
      votoTotal <- votoTotal + 1
   senao
      limpatela()
      escreval("       CANDIDATOS")
      escreval("--------------------------")
      para i de 1 ate 3 faca
         escreval("Nome:",candidatos[i].nome)
         escreval("Número:",candidatos[i].numero)
         escreval("Partido:",candidatos[i].partido)
         escreval("--------------------------")
      fimpara
      escreval("Digite aqui o número do candidato que deseja votar: ")
      leia(voto)

      limpatela()

      se (funcVotoValido(voto) = 1)entao
         escreval("Voto válido registrado")
      senao
         escreval("Voto nulo registrado")
         votoNulo <- votoNulo + 1
         votoTotal <- votoTotal + 1
      fimse
      escreval()
   fimse
fimprocedimento

procedimento relatorio()
var
   i: inteiro
   relatorioPorcentagem : vetor [1..3] de real
inicio
   limpatela()
   escreval("   Relatório Votos")
   escreval("----------------------")
   escreval("Votos válidos:",votoValido)
   escreval("Votos nulos:",votoNulo)
   escreval("Votos em branco:",votoBranco)
   escreval("Votos totais:",votoTotal)
   escreval()
   escreval("   Relatório Candidatos")
   escreval("---------------------------")
   para i de 1 ate 3 faca
      escreval("Candidato:",candidatos[i].nome)
      escreval("Partido:",candidatos[i].partido)
      se(votoValido <= 0)entao
         escreval("Votos:",candidatos[i].votoRecebido)
      senao
         escreval("Votos:",candidatos[i].votoRecebido," | ",(candidatos[i].votoRecebido*100)/votoValido:2,"%")
      fimse
      escreval("---------------------------")
   fimpara
   escreval()
fimprocedimento


funcao funcVotoValido(voto: inteiro) : inteiro
var
   i, achou: inteiro
inicio
   achou <- 0
   para i de 1 ate 10 faca
      se(candidatos[i].numero = voto) entao
         candidatos[i].votoRecebido <- candidatos[i].votoRecebido + 1
         achou <- 1
         votoValido <- votoValido + 1
         votoTotal <- votoTotal + 1
         interrompa
      fimse
   fimpara
   retorne achou
fimfuncao

Var
   candidatos: vetor [1..10] de candidato
   opcaoMenu : inteiro
   votoBranco, votoNulo, votoValido, votoTotal: inteiro
Inicio

   //declarando candidatos
   candidatos[1].nome <- "Carl Johnson"
   candidatos[1].partido <- "Grove Street"
   candidatos[1].numero <- 1

   candidatos[2].nome <- "Sweet"
   candidatos[2].partido <- "Grove Street"
   candidatos[2].numero <- 2

   candidatos[3].nome <- "Ryder"
   candidatos[3].partido <- "Traidores"
   candidatos[3].numero <- 3

   repita
      escreval("Eleições GTA San Andreas")
      escreval("1. Votar")
      escreval("2. Ver relatório")
      escreval("3. Sair")
      escreva("Sua opção:")
      leia(opcaoMenu)

      escolha opcaoMenu

      caso 1
         votar()
      caso 2
         relatorio()
      caso 3
         limpatela()
         escreval("Fechando programa")

      outrocaso
         limpatela()

      fimescolha
   ate(opcaoMenu = 3)
Fimalgoritmo