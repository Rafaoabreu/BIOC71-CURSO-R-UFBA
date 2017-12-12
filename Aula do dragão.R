vacas = c(121.72355, 103.79754, 130.15442, 98.29305, 103.43365, 102.44998, 125.49993, 
          111.07215, 113.74047, 103.16081, 80.87149, 98.66692, 65.09549, 155.74965, 
          88.30168, 147.4361, 114.60806, 109.87433, 149.54772, 83.54137)
fazendeiros = c(77.91352, 78.07251, 81.95604, 75.64862, 78.45213, 79.11058, 
                79.98952, 79.18127, 840.1635, 74.8686, 82.01886, 78.26936, 77.94691, 78.75372, 
                77.64901, 77.64097, 77.19803, 72.48175, 83.45336, 78.99681)
virgens = c(127.9366, 201.7158, 136.1366, 136.588, 131.7213, 118.1486, 125.7534, 
            139.6544, 163.589, 139.7455, NA, 141.445, 110.7311, 157.5921, 176.8437, 
            102.8659, 121.8286, 134.7097, 157.1392, 166.7133)
aventureiros = c(191.3721, 216.1671, 165.438, 196.273, 172.6565, 178.2955, 193.6687, 
                 189.7674, 160.2968, 208.44, 204.0934, 208.1798, 186.638, 193.9446, 197.365, 
                 198.6853, 213.8838, 210.1881, 209.9109, 210.9228)

#cria um vetor alimentos com todas as observações e junta no dataframe

alimento = c(rep("vacas", 20), rep("fazendeiros", 20), rep("virgens", 20), rep("aventureiros",20))
dragoes = data.frame(x = alimento, y = c(vacas, fazendeiros, virgens, aventureiros))
head(dragoes)
summary(dragoes)
plot(dragoes)
x11() #abre uma janela externa pra plotar e ficar melhor de visualizar
plot(dragoes)

summary(lm(dragoes$y ~ dragoes$x)) #~ significa em função de 

max(dragoes[, 2]) # no [] o primeiro é linha e depois da vírgula é coluna, se eu não colocar o número antes ou depois da vírgula, o que eu não coloco ele pega tudo da linha ou da coluna
max(dragoes[, 2], na.rm = T)
dragoes[dragoes == 840.1635] = 84.01635
max(dragoes[, 2], na.rm = TRUE)
x11()
plot(dragoes)
dragoes2 = dragoes [-dragoes == "NA", ]
### dados dispníveis em
### http://ecologia.ib.usp.br/bie5782/doku.php?id=dados:dados-caixeta
nomesComErro = read.table("caixetaComErro.csv", header = T, sep = ",")
head(nomesComErro)
nomesComErro = read.table
View(nomesComErro)
unique(nomesComErro$especie)
sort(unique(nomesComErro$especie))
nomesComErro$especie[nomesComErro$especie == "Tabebuia casssinoides"] = "Tabebuia cassinoides"
sort(unique(nomesComErro$especie))
nomesComErro$especie[nomesComErro$especie == "Tabebuia casinoides"] = "Tabebuia cassinoides"
sort(unique(nomesComErro$especie))
nomesComErro$especie == "Tabebuia casinoides"
nomesComErro$especie[nomesComErro$especie == "Tabebuia casinoides"]
nomesComErro$especie[nomesComErro$especie == "Tabebuia casinoides"] = "Tabebuia cassinoides"
sort(unique(nomesComErro$especie))
nomesComErro$especie == "Tabebuia casssinoides"
nomesComErro$especie[nomesComErro$especie == "Tabebuia casssinoides"]
nomesComErro$especie[nomesComErro$especie == "Tabebuia casssinoides"] = "Tabebuia cassinoides"
sort(unique(nomesComErro$especie))
pi
3.141593 ==pi
i = 0.1
i = i + 0.05
i == 0.15
all.equal(i, 0.15)
a <= b
i<=0.15
a=15
b=20
a<=b
a>=b
teste = c(1, 2, 2, 3, 4, 5, 6, 7)
(teste[1] == 1) & (teste[2]/2 == 1.5)
nomesComErro[nomesComErro$especie == "Tabebuia cassinoides" & nomesComErro$local=="chauas", ]

nomesComErro[nomesComErro$especie == "Tabebuia cassinoides" & nomesComErro$ï..local=="chauas",]

nomesComErro[nomesComErro$especie == "Tabebuia cassinoides" | nomesComErro$local=="chauas",]


dragoes[dragoes$y >= 100 & dragoes$y <= 150, ]
