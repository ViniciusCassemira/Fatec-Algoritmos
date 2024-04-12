Algoritmo "CALCULAR_PEDIDO_MESA_SIMPLES"
//Para a complexidade do enunciado, não foi necessário
//laços de repetição, vetores ou o uso de condições

Var
   totalMesa, gorgetaGarcon, totalPedido : real
   refrigerante, suco, pizza, calzone : inteiro
   precoRefrigerante, precoSuco, precoPizza, precoCalzone : real

Inicio

   escreval("Quantas pizzas foram pedidas?")
   leia(pizza)
   precoPizza <- 45.90 * pizza

   escreval("Quantos calzones foram pedidos?")
   leia(calzone)
   precoCalzone <- 39.90 * calzone

   escreval("Quantos refrigerante lata foram pedidas?")
   leia(refrigerante)
   precoRefrigerante <- 4 * refrigerante

   escreval("Quantas jarras de suco foram pedidas?")
   leia(suco)
   precoSuco <- 6 * suco

   totalMesa <- precoPizza + precoCalzone + precoRefrigerante + precoSuco
   gorgetaGarcon <- totalMesa * 0.1
   totalPedido <- totalMesa + gorgetaGarcon

   limpatela()
   escreval("INFORMAÇÕES DO PEDIDO")
   escreval("---------------------")

   escreval("Pizzas pedidas:",pizza)
   escreval("Preço das pizzas: R$",precoPizza)
   escreval("")

   escreval("Calzones pedidos:",calzone)
   escreval("Preço dos calzones: R$",precoCalzone)
   escreval("")

   escreval("Refrigerantes pedidos:",refrigerante)
   escreval("Preço dos refrigerantes: R$",precoRefrigerante)
   escreval("")

   escreval("Jarras de suco pedidas:",suco)
   escreval("Preço das jarras: R$",precoSuco)
   escreval("---------------")
   
   escreval("SUB-TOTAL: R$",totalMesa)
   escreval("GORGETA DE 10% DO GARÇON: R$",gorgetaGarcon)
   escreval("TOTAL DO PEDIDO: R$",totalPedido)

Fimalgoritmo