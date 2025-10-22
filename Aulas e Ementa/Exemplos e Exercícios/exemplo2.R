matriz <- matrix(1:6, nrow = 2, ncol = 3)

dim(matriz)
nrow(matriz)
ncol(matriz)
length(matriz)
matriz[,2]

for(i in 1:nrow(matriz)){
  for(j in 1:ncol(matriz)){
    print(matriz[i,j])
  }
}

matriz <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
dim(matriz)

for(i in 1:nrow(matriz)){
  for(j in 1:ncol(matriz)){
    print(matriz[i,j])
  }
}



DF <- data.frame(matriz)
colnames(DF) <- c("ID", "Idade", "Fator")
names(DF)[2] <- c("NumTV")

DF$Fator
DF[,3]


getwd()
setwd("caminho/do/arquivo.csv")

departamentos <- read.csv("departamentos.csv")
departamentos <- read.csv(url("https://raw.githubusercontent.com/GiBorelli/minicursoR/refs/heads/main/datasets/departamentos.csv"))
View(departamentos)

dfNomesIdades <- departamentos[, c(1,2)]

head(departamentos)
departamentos[c(1,4),]

departamentos[which(departamentos$Departamento == "TI"),]
departamentos[which(departamentos$Idade >= 28),]

departamentos[c(3:5),]
departamentos$Idade <- departamentos$Idade +1

mean(departamentos$Salario)
media <- sum(departamentos$Salario)/nrow(departamentos)

mean(departamentos[which(departamentos$Departamento=="TI"&departamentos$Idade>35), "Salario"])

mean(departamentos$Salario[which(departamentos$Departamento=="TI"&departamentos$Idade>35)])
