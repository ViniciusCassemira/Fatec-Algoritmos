Algoritmo "para_tentativa_Login"

Var
   usuario, senha:caracter
   i:inteiro

Inicio

   usuario <- "123"
   senha <- "123"

   para i de 1 ate 3 faca
      limpatela()
      escreval("Suas chances:",i," de 3")
      escreval("Digite o usuário: ")
      leia(usuario)
      escreval("digite a senha: ")
      leia(senha)

      se(usuario="123")e(senha="123")entao
         escreval("Login feito com sucesso.")
         interrompa
      senao
         se(i=3)entao
            escreval("acesso bloqueado")
         fimse
      fimse
   fimpara

Fimalgoritmo