#arredondamento

arred <- 15.59
round(arred)  #16
trunc(arred)  #15
ceiling(arred)  #16

#setwd("caminho/do/arquivo.csv")
setwd("C:/Users/Giovana/OneDrive/Documentos/PET/Minicursos/R - 25/datasets")
vendas <- read.csv("vendas.csv")

vendas$Data <- as.Date(vendas$Data, fomrat = "%Y-%d-%m")

plot(x = vendas$Data[which(vendas$Produto == "Produto A")],
     y = vendas$Vendas[which(vendas$Produto == "Produto A")],
    type = 'l', ylim = c(50, 200), xlab = "Data", ylab = "Vendas")
lines(x = vendas$Data[which(vendas$Produto == "Produto B")], 
      y = vendas$Vendas[which(vendas$Produto == "Produto B")], col = "red")
lines(x = vendas$Data[which(vendas$Produto == "Produto C")], 
      y = vendas$Vendas[which(vendas$Produto == "Produto C")], col = "blue")

vendas
quantidades <- c(10, 25, 15)

nomes <- c("A", "B", "C")
pie(quantidades, labels = nomes, main = "Exemplo de Gráfico de Pizza")


contagem_categorias <- table(vendas$Produto)
pie(contagem_categorias, main = "Gráfico de Pizza de Vendas")

points(x = vendas$Data[which(vendas$Produto == "Produto B")],
       y = vendas$Vendas[which(vendas$Produto == "Produto B")],
       col = "red", pch = 19)







