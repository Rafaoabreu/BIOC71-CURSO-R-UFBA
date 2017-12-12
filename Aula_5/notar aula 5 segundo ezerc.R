#### exercício 2####



obj1.folhas = rnorm(10000, mean = 9.5 , sd = 2.2)


obj1.valores = sample(obj1.folhas, 1000, replace = TRUE)


obj2.matriz = matrix(data = obj1.valores
                     , ncol = 10
                     , dimnames = list (paste( "individuo" , 1:100)
                                        , paste("folha" , 1:10))
                     )


especies = paste("especie", 1:5)
sample(especies, 100, replace = TRUE)

