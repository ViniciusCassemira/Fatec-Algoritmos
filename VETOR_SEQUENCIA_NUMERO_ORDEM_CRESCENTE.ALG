Algoritmo "VETOR_SEQUENCIA_NUMERO_ORDEM_CRESCENTE"
//Observação: Pesquisei sobre 'bubble sort' para solucionar o problema,
//fui realizar ele da maneira 'burra' porém desisti, pesquisei se existia
//uma maneira mais fácil para resolver e encontrei essa alterntiva.


Var
   i, temp : inteiro
   listaNumero : vetor[1..10] de inteiro


Inicio
   para i de 1 ate 10 faca
      escreval("Digite o ",i,"º número: ")
      leia(listaNumero[i])
   fimpara

   para i de 1 ate 10 faca
      para i de 1 ate 9 faca
         se (listaNumero[i] > listaNumero[i+1]) entao
            temp <- listaNumero[i]
            listaNumero[i] <- listaNumero[i+1]
            listaNumero[i+1] <- temp
         fimse
      fimpara
   fimpara

   escreval("Resultado")

   para i de 1 ate 10 faca
      escreva(listaNumero[i])
      se(i<>10)entao
         escreva(",")
      fimse
   fimpara


Fimalgoritmo