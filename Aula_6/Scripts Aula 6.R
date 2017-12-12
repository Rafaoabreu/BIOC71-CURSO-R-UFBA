######### Scripts #######

##### Script 1 #########


media <-function(x) 
{
  soma=sum(x)
  nobs=length(x)
  media=soma/nobs
  return(media)
} # Cria a função media, contendo os objetos soma, nobs, media dando o resultado de média

ls() # dá o que tem de objeto
media #mostra a função criada
media() # pede o x
dados=rnorm(20,2,1) #cria uma lista com a distribuição normal
media(dados) # dá a média da distribuição normal ao executar a função
dados1=rnorm(200,2,1)#cria uma lista com a distribuição normal
media(dados1)# dá a média da distribuição normal ao executar a função
dados2=(rnorm(10000,2,1))#cria uma lista com a distribuição normal
media(dados2)# dá a média da distribuição normal ao executar a função
sd(dados)# dá o desvio padrão
dados3=rnorm(20,2,0.01)#cria uma lista com a distribuição normal
media(dados3)# dá a média
dados4=rnorm(200,2,0.01)#cria uma lista com a distribuição normal
media(dados4)# dá a média
dados[2]<-NA
dados #mostra "dados"
media(dados)# dá a média


media<-function(x,rmNA=TRUE)  ##tira os NAs
{
  if(rmNA==TRUE) #se NA, pra remover
  {
    dados=(na.omit(x)) #retorna os dados com as casas incompletas removidas
    n.NA=length(x)-length(dados) # cria um objeto com quantos NA tem
    cat("\t", n.NA," valores NA excluídos\n") # concatena 
  }
  else # se não, ele faz o que se segue
  {
    dados=x # chama x de dados e vê a média.
  }
  soma=sum(dados)
  nobs=length(dados)
  media=soma/nobs
  return(media)
}

media(dados) #dá a média de dados4

var.curso<-function(x) #cria a função pra calcular a variancia
{
  media=media(x) # define media como a media
  dados=na.omit(x)	# dados como x com as casas incompletas removidas
  disvquad=(dados-media)^2 # 
  var.curso=sum(disvquad)/(length(dados)-1) #
  return(var.curso)
}

var.curso(dados) #usa a função com o objeto dados
var(dados)  #usa a função com o objeto dados### dica: veja o help dessa função "help(var)"
var(dados,na.rm=TRUE) #executa a função removendo NA
var(dados,na.rm=FALSE) #agora sem remover, aí da NA

ID.curso<-function(x) #cria uma função calculadora do indice de dispersão
{
  id=var.curso(x)/media(x)
  return(id)
}

aleat=rpois(200,2) # cria um conjunto de dados aleatórios
aleat # mostra o conjunto criado

unif=runif(200,0,4) # cria um conjunto de desvios aleatórios
unif # mostra o conjunto criado
unif=round(unif,0) # o mesmo de cima, mas com valores arredondados
unif # mostra o conjunto criado

agreg=round(c(runif(100,0,1),runif(100,5,10))) # cria um objeto que arredonda os dois criados acima
agreg

ID.curso(aleat) #dá o indice de dispersão do objeto

ID.curso(unif)#dá o indice de dispersão do objeto

ID.curso(agreg)#dá o indice de dispersão do objeto

test.ID <- function(x, nsim=1000) # cria uma função para testar a significância do indice de dispersão
{ 
  ID.curso=function(x){var(x)/mean(x)}# essa função precisa das funcoes media e ID.curso
  dados=na.omit(x)
  ndados=length(dados)
  med=mean(dados)
  id=var(dados)/med
  simula.aleat=rpois(length(dados)*nsim, lambda=med)
  sim.dados=matrix(simula.aleat,ncol= ndados)
  sim.ID=apply(sim.dados,1,ID.curso)
  quant.ID=quantile(sim.ID, probs=c(0.025,0.975))
  if(id>=quant.ID[1] & id<=quant.ID[2])
  { 
    cat("\n\n\n\t distribuição aleatória para alfa=0.05 \n\t ID= ",id,"\n\n\n")
  }
  if(id < quant.ID[1]) 
  { 
    cat("\n\n\n\t distribuição uniforme, p<0.025 \n\t ID= ",id,"\n\n\n")
  }
  if(id>quant.ID[2])
  { 
    cat("\n\n\n\t distribuição agregado, p>0.975 \n\t ID= ",id,"\n\n\n")
  }
  resulta=c(id,quant.ID)
  names(resulta)<-c("Indice de Dispersão", "critico 0.025", "critico 0.975")
  return(resulta)
}

test.ID(aleat) #testa pra ver se deu certo
test.ID(agreg)
test.ID(unif)

eda.shape <- function(x) #cria a função
{
  x11() 
  par(mfrow = c(2,2))	# muda o dispositivo gráfico para 2x2
  hist(x)                 # produz histograma de x
  boxplot(x)
  iqd <- summary(x)[5] -	summary(x)[2]  # faz a diferença entre o quinto elemento x e o segundo
  plot(density(x,width=2*iqd),xlab="x",ylab="",type="l")
  qqnorm(x)
  qqline(x)
  par(mfrow=c(1,1))
  
}


set.seed(22) # estabelece uma semente aleatória 
dados.pois20<-rpois(20,lambda=6) # sorteia dados aleatórios de uma função poisson com média 6
sum(dados.pois20) # a somatória aqui sempre dará 131, somente porque a semente é a mesma
set.seed(22)
dados.norm20<-rnorm(20,mean=6, sd=2) # sorteia 20 dados de uma função normal com média 6 e dp = 1
sum (dados.norm20)               # aqui o resultado dará sempre 130.48

eda.shape(dados.pois20) # dá os gráficos

eda.shape(dados.norm20) # dá os gráficos

eda.shape(rpois(500,6)) # dá os gráficos com mais amostras

eda.shape(rnorm(500,6)) # dá os gráficos  com mais amostras

eda.shape1 <- function(x) # modifica uma função já criada criando uma nova
{
  x11()
  par(mfrow = c(2,2))
  hist(x,main="Histograma de x")
  boxplot(x, main="BoxPlot de x")
  iqd <- summary(x)[5] -	summary(x)[2]
  plot(density(x,width=2*iqd),xlab="x",ylab="",type="l", main="Distribuição de densidade de x")
  qqnorm(x,col="red",main="Gráfico Quantil x Quantil",xlab="Quantil Teórico",ylab="Quantil da Amostra")
  qqline(x)
  par(mfrow=c(1,1))
  
}

eda.shape1(rnorm(500,6)) # dá os gráficos

x1=rpois(20,1) # cria um objeto
x2=rpois(20,2) # cria um objeto
x3=rpois(20,3) # cria um objeto
x4=rpois(20,1) # cria um objeto
sp.oc=matrix(c(x1,x2,x3,x4), ncol=4)  # cria um objeto
colnames(sp.oc)<-c("plot A", "plot B", "plot C", "plot D") # cria um objeto
rownames(sp.oc)<-paste("sp", c(1:20)) # cria um objeto
str(sp.oc)  # estrutura o objeto sp.oc
dim(sp.oc) # bota tudo em minusculas no objeto sp.oc
head(sp.oc) # faz a matriz sp.oc

n.spp<-function(dados) # cria uma função para contar as espécies por parcela
{
  nplot=dim(dados)[2]
  resultados=rep(0,nplot)
  names(resultados)<-paste("n.spp", c(1:nplot))
  dados[dados>0]=1
  for(i in 1:(dim(dados)[2]))
  {
    cont.sp=sum(dados[,i])
    resultados[i]=cont.sp
  }
  return(resultados)
}

n.spp(sp.oc) #aplica a função

sim<-function(dados) # cria uma função pra calcular a similaridade
{
  nplot=dim(dados)[2]
  similar=matrix(1,ncol=nplot,nrow=nplot)
  rownames(similar)<-paste("plot", c(1:nplot))
  colnames(similar)<-paste("plot", c(1:nplot))
  dados[dados>0]=1
  for(i in 1:nplot-1)
  {
    m=i+1
    for(m in m:nplot)
    {
      co.oc=sum(dados[,i]>0 & dados[,m]>0)
      total.sp=sum(dados[,i])+sum(dados[,m])-co.oc
      similar[i,m]=co.oc/total.sp 
      similar[m,i]=co.oc/total.sp 
    }
    
  }
  return(similar)
}

sim(sp.oc) # executa a função

##### Script 2 #####
# Constru��o de Fun��es

#Essa fun��o mostra quanto dinheiro os p�s tem logo ap�s pagar as contas

funcaoquevaiserpraresponderessapartedoscript = function(dinheiro){
  dinheiro = sample(500:1200, 50, replace = TRUE) 
  bolsa = rep c("mestrado", "doutorado")
  resultado = data.frame(bolsa , dinheiro)
  plot(bolsa, dinheiro)
  return (resultado)
}

funcaoquevaiserpraresponderessapartedoscript()
