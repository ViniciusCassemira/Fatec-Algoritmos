Algoritmo "VETOR_PARA_MEDIA_SALA"

Var
   nomeAluno: vetor[1..10] de caracter
   primeiraNota, segundaNota, mediaAluno: vetor[1..10] de real
   somaSala, mediaSala: real
   I: inteiro

Inicio

   //calculando e armazenando
   para i de 1 ate 10 faca
      escreva("Informe o nome do Aluno",i,":")
      leia(nomeAluno[i])
      escreva("Informe a primeira nota do aluno: ")
      leia(primeiraNota[i])
      escreva("Informe a segunda nota do aluno: ")
      leia(segundaNota[i])
      escreval()
      mediaAluno[i] <- (primeiraNota[i] + segundaNota[i]) / 2
      somaSala <-somaSala + mediaAluno[i]
      mediaSala <- somaSala / i
   fimpara
   
   //exibindo os resultados
   para i de 1 ate 10 faca
      escreval()
      escreval("Nome do aluno: ",nomeAluno[i])
      escreval("Média do aluno:",mediaAluno[i])
   fimpara
   escreval()
   escreval("Média da sala: ",mediaSala)

   //Ver resultado separado do aluno
   escreval("Escolha o numero do aluno para ver seus resultados")
   leia(i)
   escreval("Nome do aluno: ",nomeAluno[i])
   escreval("Primeira nota do aluno:",primeiraNota[i])
   escreval("Segunda nota do aluno:",segundaNota[i])
   escreval("Média do aluno: ",mediaAluno[i])

Fimalgoritmo