#### Exerc√≠cio aula 4 Rafael Oliveira de Abreu ####

#### 5. Cria√ß√£o e Edi√ß√£o de Gr√°ficos no R ####

riqueza <- c(15,18,22,24,25,30,31,34,37,39,41,45) #cria objeto riqueza
area <- c(2,4.5,6,10,30,34,50,56,60,77.5,80,85)  #cria objeto √°rea
area.cate <- rep(c("pequeno", "grande"), each=6)  #cria objeto com as categorias com uso de rep

plot(riqueza~area) #neste caso plota riqueza em fun√ß√£o de √°rea
plot(area,riqueza) # o mesmo que o anterior
boxplot(riqueza~area.cate)
barplot(riqueza)


Zocalipto=read.csv("esaligna.csv") # crio o objeto trazendo a tabela
View("Zocalipto")
plot(Zocalipto$dap~Zocalipto$ht)
plot(Zocalipto$tronco~Zocalipto$ht)
boxplot(Zocalipto$dap~Zocalipto$classe)
boxplot(Zocalipto$dap~Zocalipto$talhao)
barplot(Zocalipto$dap)
barplot (Zocalipto$ht)

#No caso acima algumas relaÁıes limitavam o tipo de gr·fico possÌvel em funÁao do tipo de #dado (categorico ou numerico).

par(las=1)
plot(riqueza~area, las=3)

par(cex=2)
plot(riqueza~area)
par(pch = 4, cex = 1.5, las = 1, family = "serif")
plot (riqueza ~ area
      , xlab = "Tamanho da Ilha - ha"
      , ylab = "Riqueza de EspÈcies"
      , main = "Aves das Ilhas Samoa"
      )
####ExercÌcio 3 - Mudando diferentes Gr·ficos####

plot(riqueza~area)
plot(riqueza~area, bty = "l", tcl=0.3) #mudou a caixa do gr·fico

boxplot(riqueza~area.cate, bty="l", tcl=5.3) #bty e tcl n„o funcionam no boxplot, aÌ se #usa par

par(bty="l")
par(tcl=0.3)
boxplot(riqueza~area.cate) #ele fez o boxplot mas ignorou o "bty"

#### Inserindo mais InformaÁıes em Gr·ficos ####

abundancia = rev(riqueza)

plot(riqueza~area)
lines(lowess(area, riqueza))

model =  lm(riqueza~area)
plot(riqueza~area)
abline(model)
plot(riqueza~area)
abline(15,0.4)

plot(riqueza~area)
abline(v=mean(area))
abline(h=mean(riqueza))

plot(riqueza~area)
text(20,40,"I told the wood to lay down")
mtext("legenda no lado errado", side=4, line=0.9, at=20,cex=2, family="serif")
plot(riqueza~area)
par(new=TRUE)
plot(abundancia~area, pch = 8, col = "red")

plot(riqueza~area)
par(new=TRUE)
plot(abundancia~area, axes=FALSE, ann=FALSE, pch=16, col = "red")
axis(4)

jpeg (filename = "graficodeome.jpg")

dev.off()

jpeg(filename = "Rplotaula.jpg", width = 480, height = 480, 
     units = "px", pointsize = 12, quality = 100,
     bg = "white",  res = NA, restoreConsole = TRUE)

par(mfrow=c(1,2))
par(mar=c(14,4,8,2))
plot(riqueza~area)
boxplot(riqueza~area.cate)

dev.off()


png (filename="meugrafico%02d.png")
plot(1:10)
plot (1:100)
plot(1:1000)
dev.off()

bmp(filename = "Rplot%03d.bmp")
jpeg(filename = "Rplot%03d.jpg")
png(filename = "Rplot%03d.png")
tiff(filename = "Rplot%03d.bmp")

####