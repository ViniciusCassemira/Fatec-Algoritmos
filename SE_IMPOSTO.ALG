Algoritmo "imposto"

Var
    salario_bruto,salario_lqd,inss,ir:real

Inicio
    //pegando o valor do salário
    escreval("Seu salário R$:")
    leia(salario_bruto)
    
    //calculo inss
    se(salario_bruto <=1412.00)entao
      inss <- salario_bruto * 0.075
    senao
      se(salario_bruto >= 1412.01 )e(salario_bruto <= 2666.68)entao
        inss <- (salario_bruto * 0.09) - 19.8
      senao
        se(salario_bruto >= 2666.69)e(salario_bruto <= 4000.03)entao
          inss <- (salario_bruto * 0.12) - 96.94
        senao
          //se(salario_bruto >=4000.04)e(salario_bruto <= 7786.02)entao
          se(salario_bruto >=4000.04)entao
            inss <- (salario_bruto * 0.14) - 174.08
          fimse
        fimse
      fimse
    fimse
    
    //calculo ir
    se(salario_bruto <=2259.20)entao
      ir <- 0
    senao
      se(salario_bruto >= 2259.21 )e(salario_bruto <= 2826.65)entao
        ir <- (salario_bruto * 0.075) - 169.44
      senao
        se(salario_bruto >= 2826.66)e(salario_bruto <= 3751.05)entao
          ir <- (salario_bruto * 0.15) - 381.44
        senao
          se(salario_bruto >=3751.06)e(salario_bruto <= 4664.68)entao
            ir <- (salario_bruto * 0.225) - 662.77
          senao
            se(salario_bruto >= 4664.69)entao
              ir <- (salario_bruto * 0.275) - 896
            fimse
          fimse
        fimse
      fimse
    fimse                                                r

    //calculo do salário líquido
    salario_lqd <- salario_bruto - (inss + ir)
    escreval("Salário sem descontos R$:",salario_bruto)
    escreval(" Descontos")
    escreval("INSS R$:",inss)
    escreval("IR R$:",ir)
    escreval("Salário líquido:",salario_lqd)

Fimalgoritmo