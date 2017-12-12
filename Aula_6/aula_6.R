erro.padrao.media.inutil = function(x) {
  sd(x)/sqrt(length(x))
  return(print("erro padrão calculado. Tenha um bom dia"))
}
exemplo = rnorm(n=100, mean = 50, sd = 15)
erro.padrao.media.inutil( x = exemplo)

erro.padrao.media.educado = function(x) {
  err=sd(x)/sqrt(length(x))
  return(print(paste("erro padrão igual a:",err," Tenha um bom dia")))
}
erro.padrao.media.educado( x = exemplo)

summary.de.pobre= function(x) {
  minimo=min(x)
  primeiroquartil=quantile(x,.25)
  mediana = median(x)
  media = mean(x)
  terceiroquartil= quantile(x,.75)
  maximo=max(x)
  erro.padrao=sd(x)/sqrt(length(x))
  
  tudoJunto =list(
    "Min."     = minimo, 
    "1st Qu"   = primeiroquartil, 
    "Median"   = mediana,
    "Mean"     = media, 
    "3rd Qu."  = terceiroquartil,
    "Max."     = maximo,
    "Std Err." = erro.padrao
  )
  return(tudoJunto)
}

exemplo = rnorm(n=100, mean = 50, sd = 15)
summary.de.pobre( x = exemplo)

