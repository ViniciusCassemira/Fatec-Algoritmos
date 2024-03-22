Algoritmo "se_emprestimo_com_seguro"

Var
   saldoMedio, credito, seguro:real
   idade:inteiro
Inicio

   //declarando saldo médio e idade
   Escreva("Digite seu saldo médio ano passado: ")
   leia(saldoMedio)
   escreva("Digite sua idade: ")
   leia(idade)

   //calcular credito
   se (saldoMedio <= 200)entao
      credito <- 0
   senao
      se(saldoMedio > 200) e (saldoMedio <= 400)entao
         credito <- saldoMedio * 0.2
      senao
         se(saldoMedio > 400) e (saldoMedio < 601)entao
            credito <- saldoMedio * 0.3
         senao
            se(saldoMedio >=   601)entao
               credito <- saldoMedio * 0.4
            fimse
         fimse
      fimse
   fimse

   //calcular seguro
   se (idade>=18)e(idade<=24)entao
      seguro <- credito * 0.02
   senao
      se(idade>=25)e(idade<=35)entao
         seguro <- credito * 0.06
      senao
         se(idade>=36)e(idade<=45)entao
            seguro <- credito * 0.08
         senao
            se(idade>=46)e(idade<=55)entao
               seguro <- credito *0.1
            senao
               se(idade>55)entao
                  seguro <- credito *0.15
               fimse
            fimse
         fimse
      fimse
   fimse

   //mostrando os resultados
   escreval("Você conseguiu um crédito de: R$",credito)
   escreval("O valor do seguro será de: R$",seguro)
   escreval("O valor total a ser devolvido para o banco será de: R$",seguro+credito)

Fimalgoritmo