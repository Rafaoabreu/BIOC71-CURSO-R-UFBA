######################################################
# Introdução Linguagem R
# Vitor Passos Rios
# Universidade Federal da Bahia
# https://github.com/vrios/Intro-Linguagem-R/wiki
#####################################################

#quando possível, sua resposta deve ser um código do R

#####Trabalhando com dados#####
# o que é um dataframe? Qual a diferneça entre um dataframe e um list?

#RESPOSTA : O dataframe é uma uma matriz que pode misturar valores de classes diferentes, a list é um conjunto de objetos de classes diferentes.


# o que as funções abaixo fazem? O que elas retornam?

is.vector() #te diz se é um vetor ao retornar indicadores de true or false
is.numeric() #te diz se é numérico ao retornar indicadores de true or false
is.character() #te diz se é texto ao retornar indicadores de true or false
is.matrix(peso) # pergunta se o objeto peso é uma matriz
is.na() #te diz se o dado está ausente (NA) ao retornar indicadores de true or false
is.data.frame() #te diz se é um data.frame ao retornar true or false


#o que queremos dizer quando dizemos uma função "retorna" alguma coisa?
#é o valor final que o R te dá ao cumprir a ordem dada

#o que a função summary() faz?
#dá as estatísticas sumárias do conjunto de dados


#Três áreas foram submetidas aplicação de três adubos diferentes, e uma foi
#mantida como controle. A biomassa seca (kg) por parcela foi medida para
#verificar se houve efeito do adubo. Os dados obtidos foram:


#(Controle)	A	37	34	36	42	31  33
#B	62	54	57	64	60
#C	63	58	60	62	61 44
#D	41	37	38	49	35 49

#Crie um dataframe com estes dados

A=c(37,	34,	36,	42,	31, 33)
B=c(62,	54,	57,	64,	60)
C=c(63,	58,	60,	62,	61, 44)
D=c(41,	37,	38,	49,	35, 49)

tratamento = c(rep("A", 6), rep("B", 5), rep("C", 6), rep("D",6))
biomassa = c(A, B, C, D)
eficiencia = data.frame(x = tratamento, y = biomassa)
head(eficiencia)

#Calcule a média de cada tipo de adubo, sem usar summary(), usando o dataframe
#que você criou acima

media.a=mean(eficiencia$y[eficiencia$x=="A"])
media.b=mean(eficiencia$y[eficiencia$x=="B"])
media.c=mean(eficiencia$y[eficiencia$x=="C"])
media.d=mean(eficiencia$y[eficiencia$x=="D"])

#que problemas você teve ao fazer o exercício acima?

#RESPOSTA Familiaridade com a linguagem, principalmente. Dificuldade em identificar os nomes do dataframe e das colunas.

# O que a função unique() faz? recupera todas as palavras unicas dentro do conjunto pedido.

#Usando o conjunto de dados caixeta.csv, disponivel em
#http://ecologia.ib.usp.br/bie5782/doku.php?id=dados:dados-caixeta, calcule
#quantas espécies estão presentes na coluna especie. Para ler o arquivo, execute
#o código abaixo
caixeta = read.table("caixeta.csv", header=T, sep=",", as.is=T)
# o arquivo deve estar no seu diretório de trabalho
str(caixeta) #o que este comando faz? Mostra a estrutura de um objeto de forma abreviada.
summary(caixeta)

#podemos criar uma coluna a mais no nosso dataframe apenas dizendo ao R o que
#colocar lá. Por exemplo, criamos uma coluna com o nome do coletor do dado
caixeta$coletor= "Darwin" #regra da reciclagem
str(caixeta)

#agora adicione no objeto caixeta uma coluna chamada "desvio" com o quanto a
#altura de cada árvore difere da média de todas as árvores

mean.h=mean(caixeta$h)
desvio=caixeta$h - mean.h
caixeta$desvio= desvio
# desse jeito fica mais legal --> caixeta$desvio=caixeta$h-mean(caixeta$h)

#Usando a função table(), conte quantos indivíduos de cada espécie existem

table(caixeta$especie)

#A função table() também pode contar por espécie em cada local, depois por local
#em cada espécie). Como?

table(caixeta$especie,caixeta$local)

#crie um objeto chamado pequenas que contenha todas as árvores com altura (h)
#menor que um metro.(Os dados no arquivo estão em centímetros)

pequenas=caixeta[caixeta$h<100, ]
pequenas

#crie um objeto chamado grandes que contenha todas as árvores acima de 3 metros

grandes=caixeta[caixeta$h>300, ]
grandes

#crie um objeto chamado medias que todas as árvores com alturas entre um metro e
#tres metros

medias = caixeta[caixeta$h>=100 & caixeta$h<=300, ]
medias

#agora em uma linha de comando, crie um objeto que contenha a quantidade de
#árvores pequenas, médias e grandes, separadamente
todas=c(length(pequenas$local),length(medias$local), length (grandes$local))
todas

#Crie um objeto chamado obj somente com os individuos de "Alchornea
#triplinervia" Em quantas localidades esta espécie ocorre? Qual comando para
#encontrar essa informação?

obj=caixeta[caixeta$especie == "Alchornea triplinervia",]
obj

table(obj$especie)

#podemos remover dados de um dataframe, usando o sinal de menos

caixeta.sem.tabebuia = caixeta[ - which(caixeta$especie=="Tabebuia cassinoides"),]
sort(unique(caixeta.sem.tabebuia$especie))

#agora crie um objeto removendo todas as "Tabebuia cassinoides" do local retiro
#(somente do local retiro)


caixeta.sem.retiro = caixeta[!(caixeta$local=="retiro" & caixeta$especie=="Tabebuia cassinoides"),]
caixeta.sem.retiro
sort (unique(caixeta.sem.retiro$especie))
caixeta.sem.retiro

#! é não. Não pegue o que cumprir as condições abaixo.

#crie os objetos abaixo, junte eles num dataframe de duas colunas chamado comNA,
#depois crie um novo objeto chamado semNA, removendo todas as linhas que
#contenham NA, usando a notação acima (dica: só se usa "" para valores do tipo
#character)
id = 1:80
a = c(121.72355, 103.79754, 130.15442, 98.29305, 103.43365, 102.44998,
      NA, 111.07215, 113.74047, 103.16081, 80.87149, 98.66692,
      65.09549, 155.74965, 88.30168, 147.43610, 114.60806, 109.87433,
      149.54772, 83.54137
)
b = c(77.91352, 78.07251, 81.95604, 75.64862, 78.45213, 79.11058,
      79.98952, 79.18127, 840.1635, 74.86860, 82.01886, 78.26936,
      77.94691, 78.75372, 77.64901, NA, 77.19803, 72.48175,
      83.45336, 78.99681
)
c = c(127.9366, 201.7158, NA, 136.5880, 131.7213, 118.1486,
      125.7534, 139.6544, 163.5890, 139.7455, NA, 141.4450, 110.7311,
      157.5921, 176.8437, 102.8659, 121.8286, 134.7097, 157.1392, 166.7133
)
d = c(191.3721, 216.1671, 165.4380, 196.2730, 172.6565, 178.2955,
      193.6687, NA, 160.2968, 208.4400, 204.0934, 208.1798,
      186.6380, 193.9446, NA, 198.6853, 213.8838, 210.1881,
      209.9109, 210.9228
)
comNA=data.frame(id,y=c(a, b, c, d))
View(comNA)

semNA = comNA[!is.na(comNA$y),]
semNA

##########ATEH AQUI EMFERNO ##########
#Abaixo temos dados de tamanho de mandíbula de chacal dourado. Crie um dataframe
#com esses dados. Qual a média por sexo? E para a espécie? Guarde estes valores
#em tres objetos diferentes.
#machos: 120 107 110 116 114 111 113 117 114 112
#femeas: 110 111 107 108 110 105 107 106 111 111 Quantos machos têm a mandíbula
#maior do que a média das fêmeas?

chacais=data.frame(x=machos, y=femeas)
machos =c(120, 107, 110, 116, 114, 111, 113, 117, 114, 112)
femeas =c(110, 111, 107, 108, 110, 105, 107, 106, 111, 111)
#pelo dataframe
machos.grandes2=chacais$x[chacais$x>mean.f]


mean.m=mean(machos)
mean.f=mean(femeas)
mean.sp=mean(c(machos, femeas))
machos.grandes=machos[machos>mean.f]

#escreva **uma** linha de código que testa se um número é par, e caso seja,
#manda uma mensagem dizendo "par". dica: use a função %% (resto da divisão, ou
#remainder em inglês) e a função message()
#agora crie um código  como acima, mas que diga "par" se for par e "impar" se
#for impar. Dica: leia sobre as funções else e ifelse

if (8 %% 2 == 0){message ("paire")} else {"impaire"}
if(x>4* mean(dados)){dados[-x]}

if (machid == "macho"){message ("ome")} else {"leba"}

teste.de.normalidade=shapiro.test(dragoes$y)
if(teste.de.normalidade$p.value <=0.05){
  fit=lm(dragoes$y~dragoes$x) 
  plot(dragoes,main="normal")
  } else {kruskal.test(dragoes)
    plot(dragoes,main="kruskal")}

#crie um ciclo (for) que mostre o console todos os inteiros de 1 até 10, um por
#um

a="cu"

for (i in 1:10) {
  a=i
  message(a)
  
}

#crie um ciclo (for) que some todos os inteiros de 25 até 43, guardando esses
#valores num objeto soma (dica: crie o objeto soma com valor zero antes do
#código do ciclo)

soma=0
for (i in 25:43){
  soma=soma+25
  message(soma)
}

#####Desafio level Hard#####
#Escreva um código que escreva os números de um a 100, com as seguintes
#condições: Se o número for multiplo de 3, ao invés do dígito, escreva "Fu". Se
#o número for múltiplo de 5, ao invés do dígito, escreva "bá". Para números que
#forem multiplos tanto de 3 quanto de 5, escreva "Fubá". A melhor solução ganha
#um chocolate

fu=0
ba=0
fuba=0

if (i%%3==0 1:30){
    message(fu)
    }