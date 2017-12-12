#####Leia o arquivo de dados Inventário em Florestas Plantadas de Eucalyptus grandis usando a função read.table. Salve os dados em um objeto denominado e.grandis (usando as.is=F)#####

e.grandis = read.table("egrandis.csv", header = TRUE, as.is = F, sep = ";", dec = ".")

#####Crie um objeto denominado breviarium contendo o summary das variáveis####

breviarium = summary(e.grandis)

####Crie um objeto denominado cont.1 contendo a tabela de contagem da variável "ano". Crie um objeto denominado cont.2 contendo a tabela de contagem das variáveis "rotacao" e "regiao" juntas####

cont.1 = table (e.grandis$ano)
cont.2 = table (e.grandis$rotacao , e.grandis$regiao)

####Selecione os dados da região "Bofete" e separe em um novo objeto denominado bofete. Salve-o em um arquivo denominado bofete.txt no diretório corrente, separado por tabulação e sem nome de linhas. Dica: veja o help das funções read.table(), write.table(), summary(), mean() e sd().####

bofete = e.grandis [e.grandis$regiao == "Bofete", ]

write.table(x=bofete,
            file = "bofete.txt",
            sep = "\t",
            dec = ".",
            row.names = F)

           