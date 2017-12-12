######################################################
# Introdução Linguagem R
# Vitor Passos Rios
# Universidade Federal da Bahia
# https://github.com/vrios/Intro-Linguagem-R/wiki
#####################################################

#####Usando o R como calculadora#####

#Digite no R os códigos abaixo.
#Dica: escreva neste arquivo, ao lado do comando, o que ele faz,
#como no exemplo abaixo

1 + 1 #soma os valores

# O símbolo # representa um comentário, isto é, tudo que vier à direita
# dele será ignorado quando o R ler o arquivo

34 - 72.3 #subtrai 72.3 de 34
12+12 # =Lucas

# use pontos como separador de decimal. O que acontece se você usar virgula? Dá erro
2,3+3

78 / 3
2 ^ 3 #circunflexo é elevado à potência que é o número que vem depois
3 * 2 #asterisco é multiplicação
sqrt(2) #squareroot
pi #Pi
log(x = 3,base = 10) #fez o log de 3 na base 10
exp(x = 1) #fez o exponencial de 1
exp(x=24) 
#o que querem dizer estes valores dentro do parêntese? porque usamos o = aqui?
#parêntese quer dizer função

#####Atribuição de valores e criação de objetos#####
#O que os comandos abaixo fazem?
objeto1=3 #determina um objeto com um nome 
objeto1 #apareceu o 3
objeto = 42 #aqui o objeto não tava determinado, aí determinei ao dar um ctrl+enter
objeto
objeto.2 <- 42
objeto.2 #apareceu o 42
# Os símbolos = e <- fazem basicamente a mesma coisa. Que coisa?
#Determinar um objeto
objeto.cubico <- objeto^3 #determina o objeto.cubico como o objeto elevado ao cubo
objeto.cubico <- objeto^3

resultado.1 <- (objeto.cubico / 3) + 7 #aqui determina novo objeto no qual o parêntese define prioridade na sequência das operações
resultado.1 = (objeto.cubico/3)+7

objeto.texto <- "texto sempre vem entre aspas" #se errar e não colocar aspas ou colocar sem poder, aí dá pau
objeto.texto # dá erro porque "texto sempre vem entre aspas" está separado por espaços
objeto.texto <- "texto_vem_sempre_entre_aspas"
objeto.texto

objeto.texto.2 <- "42" #definiu o objeto.texto.2 como 42 em texto

objeto.vetor.1 = 1:34 #define uma sequência de 1 a 34
objeto.vetor.1
objeto.vetor2 = c(1, 74.5, 48) #gera uma caixa com esses valores
objeto.vetor2

?seq #abre a ajuda pra explicar o paranauê (help serve também)
objeto.vetor3 = seq(from = 20, to = 32, by = 0.5) #gera uma sequência de 20 a 32, dada de meio em meio
objeto.vetor3
#podemos calcular estatísticas com o r
mean(objeto.vetor3) #media = 26
mean(objeto.vetor3)
var(objeto.vetor3) #variancia = 13.54167
var(objeto.vetor3)
median(objeto.vetor3) #mediana = 26
median(objeto.vetor3) 
min(objeto.vetor3) # =20
max(objeto.vetor3) # = 32
diff(objeto.vetor3) #calcula a diferença entre os elementos sucessivos do vetor
diff (objeto.vetor3) #deu a distância entre cada valor na sequência
# R também faz comparações entre objetos
42 > 7 #o valor na linha indicada é maior que 7
objeto == objeto.2 #dá erro porque objeto.2 não existe
objeto == objeto.texto.2 
# o que aconteceu acima?
#objeto == objeto.2 #dá erro porque objeto.2 não existe
#objeto == objeto.texto.2 compara os objetos, que são iguais pois deu TRUE

7.1 <= 7.001 #dá erro porque a seta está escrita com igual no lugar do hífen
?"<"
?<
#pedindo ajuda
?pi # aparece a explicação
?log
??lm
help(log)
help.search("anova")

#####Arquivos e diretórios#####
# Como você descobre o diretório de trabalho? Com o comando getwd()
getwd()

# Como você lista o conteúdo do diretório de trabalho? Com o caomando dir()
dir()

# Como você define o diretório de trabalho? Com o comando setwd(endereço)

setwd("C:/Users/Thaís/desktop")

getwd()
# Como você carrega um arquivo de script?

# Como você salva os objetos que criou?

# Como você carrega os objetos que criou?

# Como ver quis objetos estão na sua área de trabalho?

# Como remover objetos da área de trabalho?

##### Lidando com erros#####
# O que acontece quando você digita os comandos abaixo? Como consertar cada erro?
objetol
objeto .texto
Objeto
source("chuchu.R")
source(chuchu.R)
setwd("C:/CavernaDoDragão")
getwd
Getwd()
#dica: quando o R der erro, copie e cole a mensagem de erro no google