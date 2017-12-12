getwd()
setwd("C:/Users/Thaís/Desktop/DisiplR Vitor")

#O endereço deve vir sempre em aspas, e use / ao invés de \ no Windows

source("https://raw.githubusercontent.com/vrios/Intro-Linguagem-R/master/arquivos/scriptOnline.R")

caixeta = read.csv("https://raw.githubusercontent.com/vrios/Intro-Linguagem-R/master/arquivos/caixeta.csv")

if(!require("chuchu")) {#substitua chuchu pelo pacote desejado
  stop("pacote chuchu não encontrado, instale para proseguir")
}

#PRA SALVAR TUDO TUDO pra dá save.image(file="tudoJunto.RData")

#pra salvar normal, save(file="resultadosSalvos.RData",list = list(resultado1, resultado2, resultado3))

list.files()
list.files("aula")
aulas=list.files(pattern = "Aula")
scripts=list.files(pattern="\\.csv$")

help("read.table")

arquivo = read.csv(file.choose(), as.is=T, sep=",", dec=".")

getwd()
setwd("C:/Users/Thaís/Desktop/DisiplR Vitor")

library(writexl)
library(readxl)
write_xlsx(mtcars , "mtcars.xlsx")
out <- read_xlsx("mtcars.xlsx")
View(mtcars)

