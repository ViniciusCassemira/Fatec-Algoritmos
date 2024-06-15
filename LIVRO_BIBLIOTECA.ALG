Algoritmo "LIVRO_BIBLIOTECA"

tipo
   Tlivro = registro
      titulo, autor: caractere
      ano, isbn: inteiro
   fimregistro

procedimento cadastrarLivro()
inicio
   limpatela()
   qntLivro <- qntLivro + 1
   escreval("Digite o título do livro:")
   leia(livro[qntLivro].titulo)
   escreval("Digite o nome do autor:")
   leia(livro[qntLivro].autor)
   escreval("Digite o ano do livro:")
   leia(livro[qntLivro].ano)
   escreval("Digite o isbn do livro:")
   leia(livro[qntLivro].isbn)

   limpatela()
   escreval("Livro cadastrado com sucesso")
   escreval()
fimprocedimento

procedimento exibirCatalogo()
var
   i: inteiro
inicio
   limpatela()

   se (qntLivro >= 1)entao
      escreval("      Livros Cadastrados")
      escreval("--------------------------------")
      para i de 1 ate qntLivro faca
         escreval("Título:",livro[i].titulo)
         escreval("Autor:",livro[i].autor)
         escreval("Ano:",livro[i].ano)
         escreval("isbn:",livro[i].isbn)
         escreval("--------------------------------")
      fimpara
   senao
      escreval("Não existem livros cadastrados no sistema")
   fimse
   escreval()
fimprocedimento

procedimento buscarLivro()
var
   varTempLivro : caractere
   i: inteiro
inicio
   limpatela()
   se (qntLivro >= 1)entao
      escreval("Digite o nome do livro que deseja: ")
      leia(varTempLivro)
      limpatela()

      //escreval(funcBuscarLivro(varTempLivro))
      se (funcBuscarLivro(varTempLivro) = 0)entao
         escreval("Livro não encontrado")
      senao
         escreval("Livro encontrado com sucesso!")
         escreval("--------------------------------")
         escreval("Título:",livro[funcBuscarLivro(varTempLivro)].titulo)
         escreval("Autor:",livro[funcBuscarLivro(varTempLivro)].autor)
         escreval("Ano:",livro[funcBuscarLivro(varTempLivro)].ano)
         escreval("isbn:",livro[funcBuscarLivro(varTempLivro)].isbn)
         escreval("--------------------------------")
      fimse
   senao
      escreval("Não existem livros cadastrados no sistema")
   fimse
   escreval()

fimprocedimento

funcao funcBuscarLivro(nomeLivro: caractere):  inteiro
var
   i, codLivro: inteiro
inicio
   codLivro <- 0
   para i  de 1 ate 10 faca
      se (nomeLivro = livro[i].titulo)entao
         codLivro <- i
         interrompa
      fimse
   fimpara
   retorne codLivro
fimfuncao

Var
   livro : vetor[1..10] de Tlivro
   opcaoMenu,qntLivro : inteiro
Inicio


   repita
      escreval("BIBLIOTECA DO ZÉ")
      escreval("1. Cadastrar Livro")
      escreval("2. Exibir catálogo")
      escreval("3. Buscar por livro")
      escreval("4. Sair do programa")
      escreva("Sua opção: ")
      leia(opcaoMenu)

      escolha opcaoMenu
      caso 1
         cadastrarLivro()
      caso 2
         exibirCatalogo()
      caso 3
         buscarLivro()
      caso 4
         limpatela()
         escreval("Saindo do programa")
      outrocaso
         limpatela()
      fimescolha

   ate (opcaoMenu = 4)

Fimalgoritmo