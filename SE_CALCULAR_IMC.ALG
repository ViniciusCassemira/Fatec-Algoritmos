Algoritmo "calcular_imc"
// calcule
Var
imc, altura, peso :real

Inicio
    escreval("Digite sua altura")
    leia(altura)
    escreval("Digite seu peso")
    leia(peso)
    imc <- peso/(altura*altura)
    escreval(imc)

    se (imc <= 18.5)entao
      escreval("baixo peso")
    senao
      se(imc >=18.6)e(imc <= 24.9)entao
        escreval("peso normal")
      senao
        se(imc>=25)e(imc <=29.9)entao
          escreval("Sobrepeso")
        senao
          se(imc >= 30 e (imc <= 39.9))entao
            escreval("obesidade")
          senao
            se(imc >= 40)entao
              escreval("obesidade grave")
            fimse
          fimse
        fimse
      fimse
    fimse
Fimalgoritmo