#Atribuicao de valor a uma variavel
x <- 5
y = 2
d = 3.6
str <- "Minicurso R"
vetor <- c(1,2,6)
vetor <- c(1:6)
vetor[2]
print(vetor[1])
condicao <- TRUE
class(x)
class(d)
class(str)

#Operações Aritméticas Básicas
x <- x + 5
x = x - y
y = x * y
x = y / x
d = d/x

print(x)
str

#Estrutura Condicional
if(FALSE){
  print("O valor é maior que dez")
}else{
  print("O valor é menor ou igual a dez")
}

#Estruturas de Repetição
i = 1
while(i <= length(vetor)){
  print(vetor[i])
  i = i + 1
}

for(i in 1:length(vetor)){
  print(vetor[i])
}

i = 1
while(condicao){
  print(vetor[i])
  if(vetor[i] > 3){
    condicao = FALSE
  }
  i = i + 1
}

for(i in 1:length(vetor)){
  if(vetor[i] >= mean(vetor)){
    print("É maior que a média dos valores do vetor")
  }else{
    print("É menor que a média dos valores do vetor")
  }
}

