Algoritmo "VETOR_REGISTRO_PROCEDIMENTO_BANCO"
//feito por vini malvadeza

tipo transacao = registro
   data: caractere
   valor: real
fimregistro

procedimento login()
var
   usuario, senha: caractere
   i: inteiro
inicio
   para i de 1 ate 3 faca
      escreval("Tentativa",i," de 3")
      escreval("Digite o login")
      leia(usuario)
      escreval("Digite sua senha")
      leia(senha)

      se(usuario="1")e (senha="1")entao
         limpatela()
         escreval("Acesso Liberado")
         escreval()
         interrompa()
      senao
         limpatela()
         se(i=3)entao
            escreval("Acesso bloqueado")
            fimalgoritmo
         fimse
      fimse
   fimpara
fimprocedimento

procedimento deposito()
var
   varTemp : real
inicio
   limpatela()
   escreval("---Depósito---")
   repita
      escreva("Digite o valor R$:")
      leia(varTemp)
      se (varTemp >0 )entao
         saldo <- saldo + varTemp
         posicao <- posicao + 1
         escreval("Digite a data de hoje")
         leia(movimentacao[posicao].data)
         movimentacao[posicao].valor <- varTemp
         limpatela()
         escreval("Depósito Feito")
         escreval()

      senao
         escreval("O valor precisa ser maior do que 0")
      fimse
   ate (varTemp >0)
fimprocedimento

procedimento saque()
var
   varTemp : real
   saqueFeito : inteiro
inicio
   saqueFeito <- 0
   limpatela()

   se(saldo > 0)entao
      escreval("---Saque---")
      repita
         escreval("Seu saldo atual R$:",saldo)
         escreva("Digite o valor que deseja sacar R$:")
         leia(varTemp)
         se (varTemp >0 ) e (varTemp <= saldo) entao
            saldo <- saldo - varTemp
            saqueFeito <- 1
            posicao <-posicao + 1
            escreval("Digite a data de hoje")
            leia(movimentacao[posicao].data)
            movimentacao[posicao].valor <- -varTemp
            limpatela()
            escreval("Saque realizado")
         fimse
         se (varTemp > 0) e (varTemp > saldo)entao
            limpatela()
            escreval("Você não tem o valor disponível")
         fimse
         
         se(varTemp <= 0)entao
            limpatela()
            escreval("O valor precisa ser maior do que 0")
         fimse
         escreval()
      ate (saqueFeito = 1)
   senao
      limpatela()
      escreval("Sua conta está sem saldo, impossível sacar")
      escreval()
   fimse
fimprocedimento

procedimento extrato()
var
   i: inteiro
inicio
   limpatela()
   se (posicao >=1)entao
      escreval("---Extrato da sua conta---")
      escreval(" Nº | data | valor")
      para i de 1 ate 100 faca
         se(movimentacao[i].valor <> 0)entao
            escreval(" ",i,"  ",movimentacao[i].data,"  ",movimentacao[i].valor)
         fimse
      fimpara
   senao
      escreval("Sem movimentações recentes")
   fimse
   escreval()
fimprocedimento

procedimento verSaldo()
inicio
   limpatela()
   escreval("Saldo em sua conta: R$",saldo)
   escreval()
fimprocedimento

Var
   movimentacao : vetor[1..100] de transacao
   //menu, posicao atual
   opcaoMenu, posicao : inteiro
   saldo : real
Inicio

   login()
      repita
         escreval("Caixa Eletrônico")
         escreval("1. Realizar depósito")
         escreval("2. Realizar Saque")
         escreval("3. Ver extrato")
         escreval("4. Ver saldo")
         escreval("99 Sair")
         leia(opcaoMenu)

         escolha opcaoMenu

         caso 1
            deposito()
         caso 2
            saque()
         caso 3
            extrato()
         caso 4
            verSaldo()
         outrocaso
            limpatela()
         fimescolha

      ate (opcaoMenu = 99)
Fimalgoritmo