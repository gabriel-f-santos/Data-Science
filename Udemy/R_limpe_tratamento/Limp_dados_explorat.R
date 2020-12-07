R-Tratamento de dados - Acompanhando curso do Fernando Amaral

```{r}
setwd("C:\\Users\\ga_fi\\OneDrive\\Documentos\\Projetos\\DataScience\\Udemy\\R_limpe_tratamento")

```
```{r}
getwd()
```
Primeiramente setei o diretório para o lugar onde armaenei os dados em CSV

Abaixo, carrega o CSv.
na.strings="" importa os dados faltantes como NA para posterior tratamento.

stringsAsFactors são dados categóricos com domínios
```{r}
dados=read.csv("churn.csv", sep=";", na.strings="", stringsAsFactors = T)
head(dados)
```


```{r}
```


```{r}
summary(dados)
```
Agora vamos dar nome das colunas que estão com X
```{r}
colnames(dados) = c("Id", "Score","Estado", "Genero", "Idade", "Patrimônio", "Saldo", "Produtos", "TemCartCredito", "Ativo", "Salario", "Saiu")
head(dados)

```
Exploração dos dados
```{r}
#estados - contagem dos dados categóricos
counts= table(dados$Estado)
barplot(counts, main="Estados", xlab="Estados")
```
```{r}
#Gênero - Categórico
counts2=table(dados$Genero)
barplot(counts2, main="Generos", xlab="Generos")

```
Exploração de dados numéricos
```{r}
summary(dados$Score)
boxplot(dados$Score)
hist(dados$Score)
```
CTRL+ENTER RODA LINHA / CTRL+SHIFT+ENTER TUDO
```{r}
#Idade
summary(dados$Idade)
boxplot(dados$Idade)
hist(dados$Idade)
```
```{r}
#SALDO
summary(dados$Saldo)
boxplot(dados$Saldo)
hist(dados$Saldo)

```
```{r}
#SALario
summary(dados$Salario)
boxplot(dados$Salario)
hist(dados$Salario, outline=F)

```



