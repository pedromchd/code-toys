//PSEUDOCODIGO OrcamentoObra_Portugol
//Variaveis
m_compPeca, m_largPeca, cm_compPiso, cm_largPiso, precoUnit_pisoRS, val_maoObraM2: real
typeAssent: caracter
dimPeca, dimPiso, qntPiso_assent: real
cust_maoObra, cust_pisoAssent, cust_totalObra: real
//Algoritmo ORCAMENTO
escreval("Insira o comprimento da peça em metros")
leia(m_compPeca)
escreval("Insira a largura da peça em metros")
leia(m_largPeca)
escreval("Insira o comprimento do piso em centímetros")
leia(cm_compPiso)
escreval("Insira a largura do piso em centímetros")
leia(cm_largPiso)
escreval("Insira o preço unitário do piso, em reais")
leia(precoUnit_pisoRS)
escreval("Insira o preço da mão de obra por m^2")
leia(val_maoObraM2)
escreval("Insira o tipo de assentamento: [c] para convencional, [d] para diagonal")
leia(typeAssent)
escreval("O piso convencional adiciona 10% na quantidade de piso a ser comprada, o diagonal, 20%")
dimPeca := m_compPeca *m_largPeca
dimPiso := cm_compPiso *cm_largPiso
qntPiso_assent := dimPeca /(dimPiso /1000)
se typeAssent = "c" entao
qntPiso_assent := qntPiso_assent +(qntPiso_assent *0.1)
fimse
se typeAssent = "d" entao
qntPiso_assent := qntPiso_assent +(qntPiso_assent *0.2)
fimse
cust_maoObra := dimPeca *val_maoObraM2
cust_pisoAssent := qntPiso_assent *precoUnit_pisoRS
cust_totalObra := cust_maoObra +cust_pisoAssent
escreval("Mão de obra: R$",cust_maoObra)
escreval("Custo do piso por assentamento: R$",cust_pisoAssent)
escreval("Custo total da obra: R$",cust_totalObra)
