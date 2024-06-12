Algoritmo "SISTEMA_BIBLIOTECA"

//Algoritmo que simula um sistema de gerenciamento de uma biblioteca
//Esse sistema permitirá: Cadastrar livros e usuários, realizar emprés
//timos de livros, registrar devoluções dos mesmos, listar todos os
//livros e usuários cadastrados, listar os livros emprestados com seus
//respectivos usuários

//Referência para a ideia do algoritmo: ChatGPT (perdoa o pai)

tipo livroR = registro
   titulo : caractere
   genero : caractere
   status : caractere
fimregistro

procedimento cadastroLivro()
inicio
   //caso o limite não tenha sido atingido
   limpatela()
   se (iCadL < 30) entao
      iCadL <- iCadL + 1
      escreval("Digite o título do livro: ")
      leia(livro[iCadL].titulo)
      escreval("Digite o gênero do livro: ")
      leia(livro[iCadL].genero)

      livro[iCadL].status <- "Disponível"
   senao
      escreval("Número máximo de livros cadastrados")
   fimse
fimprocedimento

procedimento cadastroUsuario()
inicio
   limpatela()
   se (iCadU < 10) entao
      iCadU <- iCadU + 1
      escreval("Nome do usuário")
      leia(usuario[iCadU])
   senao
      escreval("Número máximo de usuários cadastrados")
   fimse
fimprocedimento

procedimento realizarEmprestimo()
inicio
   limpatela()
   se (iCadL >= 1) e (iCadU >= 1) entao
      se(iCadE < 30)entao
         iCadE <- iCadE + 1
         repita
            escreval("Digite o código do livro: ")
            leia(emprestimo[iCadE,1])
         ate (livro[emprestimo[iCadE,1]].status = "Disponível")
         repita
            escreval("Digite o código do usuário: ")
            leia(emprestimo[iCadE,2])
         ate(emprestimo[iCadE,2] <= iCadU)

         livro[emprestimo[iCadE,1]].status <- "Indisponível"
      senao
         escreval("Número máximo de emprestimos em aberto no momento")
      fimse
   senao
      escreval("Para realizar um empréstimo de livro, precisamos que")
      escreval("exista no sistema pelo menos um livro e um usuário!")
   fimse
fimprocedimento

procedimento realizarDevolucao()
var
   varTemp : inteiro
   j,k : inteiro
inicio
   limpatela()
   se (iCadE >= 1)entao
      repita
         escreval("Digite o código do empréstimo que deseja excluir")
         leia(varTemp)
      ate (varTemp <= icadE)
      se(varTemp > iCadE)entao
         escreval("Escolhe um empréstimo válido")
      senao
         escreval("Vamos excluir o empréstimo de número ",varTemp)
         emprestimo[varTemp,1] <- 0
         emprestimo[varTemp,2] <- 0
         iCadE <- iCadE - 1
         livro[varTemp].status <- "Disponível"

         para j de 1 ate 10 faca
            para k de 2 ate 10 faca
               se (emprestimo[k,1] >= 1) e (emprestimo[k-1,1] = 0)entao
                  emprestimo[k-1,1] <- emprestimo[k,1]
                  emprestimo[k-1,2] <- emprestimo[k,2]
                  emprestimo[k,1] <- 0
                  emprestimo[k,2] <- 0
               senao
               fimse
            fimpara
         fimpara
      fimse

   senao
      escreval("Não existe empréstimos em aberto, volte quando houver.")
   fimse
fimprocedimento

procedimento listarLivro()
inicio
   limpatela()
   se (iCadL = 0)entao
      escreval("Nenhum livro cadastrado")
   senao
      escreval("        Livros no Sistema")
      escreval("Código | Título | Gênero | Status")
      para i de 1 ate iCadL faca
         escreval(i,"  ",livro[i].titulo,"  ",livro[i].genero,"  ",livro[i].status)
      fimpara
   fimse
   escreval()
fimprocedimento

procedimento listarUsuario()
inicio
   limpatela()
   se(iCadU = 0)entao
      escreval("Nenhum usuário cadastrado")
   senao
      escreval("Usuários no Sistema")
      escreval("Código | Nome")
      para i de 1 ate iCadU faca
         escreval("  ",i,"     ",usuario[i])
      fimpara
   fimse
   escreval()
fimprocedimento

procedimento listarEmprestimo()
inicio
   limpatela()
   se(iCadE = 0)entao
      escreval("Sem empréstimos no momento")
   senao
      escreval("           Empréstimos em aberto           ")
      escreval("Cod. emprestimo | Cod. livro | Cod. cliente")
      para i de 1 ate iCadE faca
         escreval("  ",i,"  ",emprestimo[i,1],"  ",emprestimo[i,2])
      fimpara
   fimse
   escreval()
fimprocedimento

Var
   usuario : vetor [1..10] de caractere
   livro : vetor[1..30] de livroR
   emprestimo : vetor[1..30, 1..2] de inteiro
   escolhaMenu : inteiro //opcao que o usuário selecionar no menu
   i : inteiro
   //variáveis que armazenam quantos livros e usuarios foram cadastrados
   //i-> variável de controle / cad->cadastro / U,L,E -> usuário,livro,emprestimo
   iCadL, iCadU, iCadE: inteiro
   statusLivro : caractere //define se o livro está disponível ou não

Inicio
   repita
      escreval("Sua opção:")
      escreval("[1] Cadastrar livro") //feito
      escreval("[2] Cadastrar usuário") //feito
      escreval("[3] Realizar empréstimo") //feito
      escreval("[4] Realizar devolução") //feito
      escreval("[5] Listar livros") //feito
      escreval("[6] Listar Usuários") //feito
      escreval("[7] Listar Emprésimos") //feito
      escreval("[99] Sair")  //feito
      leia(escolhaMenu)
      escolha escolhaMenu
      caso 1
         cadastroLivro()
      caso 2
         cadastroUsuario()
      caso 3
         realizarEmprestimo()
      caso 4
         realizarDevolucao()
      caso 5
         listarLivro()
      caso 6
         listarUsuario()
      caso 7
         listarEmprestimo()
      caso 99
         escreval("Fechando programa")
      outrocaso
         limpatela()
      fimescolha
   ate (escolhaMenu = 99)

Fimalgoritmo