Algoritmo "calcular_comissões"

Var
   qtd_muss, vlr_muss, com_muss:real
   qtd_pres, vlr_pres, com_pres:real
   qtd_mort, vlr_mort, com_mort:real
   qtd_peit, vlr_peit, com_peit:real
   total_com, total_vendas:real

Inicio
   total_com <- com_muss + com_pres + com_mort + com_peit
   total_vendas<-vlr_muss + vlr_pres + vlr_mort + vlr_peit

   escreval("Digite a quantidade de mussarela comprada: ")
   leia (qtd_muss)
   vlr_muss <- qtd_muss * 55.00
   com_muss <- vlr_muss * 0.07

   escreval("Digite a quantidade de presunto comprado: ")
   leia(qtd_pres)
   vlr_pres <- qtd_pres * 33
   com_pres <- vlr_pres * 0.04
   
   escreval("Digite a quantidade de mortadela comprada: ")
   leia(qtd_mort)
   vlr_mort <- qtd_mort * 23
   com_mort <- vlr_mort * 0.08
   
   escreval("Digite o valor de peito de frango comprado: ")
   leia(qtd_peit)
   vlr_peit <- qtd_peit * 85
   com_peit <- vlr_peit * 0.02
   
   escreval(" VENDAS:")
   escreval("Mussarela R$:",vlr_muss)
   escreval("Presunto R$:",vlr_pres)
   escreval("Mortadela R$:",vlr_mort)
   escreval("Peito de frango R$:",vlr_peit)
   escreval("")
   escreval(" COMISSÕES:")
   escreval("Mussarela R$:",com_muss)
   escreval("Presunto R$:",com_pres)
   escreval("Mortadela R$:",com_mort)
   escreval("Peito de frango R$:",com_peit)
Fimalgoritmo