####Aula4 ####

plot(x= iris$Sepal.Length, y=iris$Petal.Length,col=iris$Species)

plot(x= iris$Sepal.Length, y=iris$Petal.Length,col=iris$Species)

x11()
plot(x= iris$Sepal.Length, y=iris$Petal.Length,col=iris$Species)

library(ggplot2) #pacote especial para fazer graficos, com interface mais amigavel

qplot(x= iris$Sepal.Length, y=iris$Petal.Length, color=iris$Species)

plot(iris$Petal.Length ~ iris$Sepal.Length,col=rainbow(3), col.axis = "pink")

legend(4.5 , 6, legend = c(unique(iris$Species)))

plot(iris$Petal.Length ~ iris$Sepal.Length,col=rainbow(3)
     , col.axis = "blue"
     , xlab = "Tamain das sepala"
     , ylab = "os cumprido das petala"
     , main = "graficuzinho da awla"
     , family = "serif"
     , cex=0.5
     , lwd = 3
     , lty = "dotdash"
     , type = "p"
     , xlim = c(4, 8)#com numeros eu boto o que eu determinei, mas posso usar , xlim = range (iris$Sepal.Length) e ele determina pelo range dos meus dados.
     , ylim = range (iris$Petal.Length)
     , las = 1
     , bty = "n" # a letre o é a caixa fechada, l fica igual a letra L, n fica nada e 7 já sabe.
     )

text(5, 4.5, "bolinha")
warnings()


# a função par vai alterar tudo que acontecer depois dela, e a mfrow vai botar os gráficos na mesma janela
x11 ()

par(mfrow=c(2,2))      #linhas, colunas


plot(iris$Petal.Length ~ iris$Sepal.Length,col=rainbow(3)
     , col.axis = "blue"
     , xlab = "Tamain das sepala"
     , ylab = "os cumprido das petala"
     , main = "ome"
     , family = "serif"
     , cex=1.5
     , lwd = 3
     , lty = "dotdash"
     , type = "p"
     , xlim = c(4, 8)
     , ylim = range (iris$Petal.Length)
     , las = 1
     , bty = "n" 
)

plot(iris$Petal.Length ~ iris$Sepal.Length,col=rainbow(3)
     , col.axis = "blue"
     , xlab = "Tamain das sepala"
     , ylab = "os cumprido das petala"
     , main = "macho"
     , family = "serif"
     , cex=3.5
     , lwd = 3
     , lty = "dotdash"
     , type = "p"
     , xlim = c(4, 8)
     , ylim = range (iris$Petal.Length)
     , las = 1
     , bty = "n" 
)

plot(iris$Petal.Length ~ iris$Sepal.Length,col=rainbow(3)
     , col.axis = "blue"
     , xlab = "Tamain das sepala"
     , ylab = "os cumprido das petala"
     , main = "ome"
     , family = "serif"
     , cex=2.5
     , lwd = 3
     , lty = "dotdash"
     , type = "p"
     , xlim = c(4, 8)
     , ylim = range (iris$Petal.Length)
     , las = 1
     , bty = "n" 
)

plot(iris$Sepal.Length ~ iris$Petal.Length,col=rainbow(3)
     , col.axis = "blue"
     , xlab = "Tamain das sepala"
     , ylab = "os cumprido das petala"
     , main = "urso"
     , family = "serif"
     , cex=0.5
     , lwd = 3
     , lty = "dotdash"
     , type = "p"
     , xlim = range (iris$Petal.Length)
     , ylim = range (iris$Sepal.Length)
     , las = 1
     , bty = "n" 
)

abline (
  v=mean(iris$Sepal.Length)
  , col = "red"
  )
abline (
  h=mean(iris$Sepal.Length)
  , col = "green"
)
abline (a=3.5, b=0.5
        , col = "purple")
points(x=5, y=5, col = "purple")
arrows(x0=2, y0=7, x1= 4, y1 = 5.8, col = "purple", lwd = 6)
segments (x0=2, y0=5.5, x1= 2, y1 = 6, col = "orange", lwd = 4)
segments (x0=2.3, y0=5.5, x1= 2.3, y1 = 6, col = "orange", lwd = 4)
points(x=2.15, y=6.15, col = "red", cex=7)

axis(1, pos = 0)
axis(2, pos = 0)

x11()
