setwd("C:/Users/Giovana/OneDrive/Documentos/PET/Minicursos/R - 25/datasets")
vendas <- read.csv("vendas.csv")

nomes <- c("Produto A", "Produto B", "Produto C")
nomes <- unique(vendas$Produto)
cores <- c("lightblue", "purple", "lightgreen")

somas <- c(0,0,0)
for(i in 1:3){
  somas[i] <- sum(vendas$Vendas[which(vendas$Produto == nomes[i])])
}

barplot(somas, ylim = c(-10, 1000), xlim = c(0, 6),
        xlab = "Produtos", ylab = "Vendas", 
        col = cores)
legend("topright", legend = nomes, 
       fill = cores)


install.packages("ggplot2")
library(ggplot2)

#OU

somas <- c(0,0,0)
somas[1] <- sum(vendas$Vendas[which(vendas$Produto == "Produto A")])
somas[2] <- sum(vendas$Vendas[which(vendas$Produto == "Produto B")])
somas[3] <- sum(vendas$Vendas[which(vendas$Produto == "Produto C")])

barplot(somas, ylim = c(-10, 1000), 
        xlab = "Produtos", ylab = "Vendas", 
        col = c("red", "blue", "green"))
legend("topright", legend = c("Produto A", "Produto B", "Produto C"), 
       fill = c("red", "blue", "green"))




colors()


alunos <- read.csv("alunos.csv")
View(alunos)

for(i in 1:nrow(alunos)){
  for(j in 1:ncol(alunos)){
    if(is.na(alunos[i, j])){
      print("Tem NA")
    }
  }
}

unique(alunos$Hours_Studied)
table(alunos$Hours_Studied)

for(j in 1:ncol(alunos)){
  print(j)
  print(unique(alunos[,j]))
}
# "" - 12, 17, 18

table(alunos[,12])

opcoesParEduLevel <- c("High School", "College", "Postgraduate")
opcoesAcessWifi <- c("Yes", "No")
opcoesAcessWifi <- unique(alunos$Internet_Access)
cores <- c("skyblue1", "steelblue3", "palevioletred1", "violetred1", "seagreen2", "forestgreen")
cores2 <- rainbow(6)

alunos_filtrado <- alunos[alunos$Parental_Education_Level != "", ]
View(alunos_filtrado)

categorias <- paste(alunos_filtrado$Parental_Education_Level, 
                    alunos_filtrado$Internet_Access, sep = " e ")

contagens <- table(categorias)
porcentagens <- round(100 * contagens / sum(contagens), 1)

rotulos <- paste0(names(contagens), " (", porcentagens, "%)")

pie(contagens, 
    labels = rotulos, 
    main = "Distribuição Combinada de Educação Parental e Acesso à Internet", 
    col = cores2,
    clockwise = TRUE,
    cex = 0.8)



