setwd("C:/Users/Giovana/OneDrive/Documentos/PET/Minicursos/R - 25/datasets")
vendas <- read.csv("vendas.csv")

nomes <- c("Produto A", "Produto B", "Produto C")
cores <- c("lightblue", "purple", "lightgreen")

somas <- c(0,0,0)
for(i in 1:3){
  somas[i] <- sum(vendas$Vendas[which(vendas$Produto == nomes[i])])
}

barplot(somas, ylim = c(-10, 1000), 
        xlab = "Produtos", ylab = "Vendas", 
        col = cores)
legend("topright", legend = nomes, 
       fill = cores)

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






