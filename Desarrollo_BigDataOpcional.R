
########### Pregunta 1 #######################

Datos<-read_excel("Big_Data_Opcional/246544_Datos_Nomofobia.xlsx")
summary(Datos)

hist(Datos$Nomofobia)
hist(Datos$Ansiedad)
hist(Datos$Estr�s)
hist(Datos$Compulsividad)
hist(Datos$`Habilidades blandas`)
hist(Datos$`Resoluci�n de conflictos`)
hist(Datos$Edad)


########### Pregunta 2 ########################
library(moments)
skewness(Datos[-8])
kurtosis(Datos[-8])
qqnorm(Datos$Nomofobia)
qqnorm(Datos$Ansiedad)
qqnorm(Datos$Estr�s)
qqnorm(Datos$Compulsividad)
qqnorm(Datos$`Habilidades blandas`)
qqnorm(Datos$`Resoluci�n de conflictos`)
qqnorm(Datos$Edad)

########### Pregunta 3 ######################
Regresion<-lm(Datos$Nomofobia~Datos$Ansiedad+Datos$Compulsividad+Datos$Estr�s+Datos$`Habilidades blandas`+Datos$`Resoluci�n de conflictos`+Datos$`Tiempo de uso del celular`+Datos$G�nero+Datos$Edad)
Regresion

########### Pregunta 5 #####################
Anova<-aov(Datos$Nomofobia~Datos$Ansiedad+Datos$Compulsividad+Datos$Estr�s+Datos$`Habilidades blandas`+Datos$`Resoluci�n de conflictos`+Datos$`Tiempo de uso del celular`+Datos$G�nero+Datos$Edad)
summary(Anova)

########### Pregunta 6 ######################################## 
hist(Datos$Nomofobia)
boxplot(Datos$Ansiedad)
barchart(Datos$G�nero)

########### Pregunta 7 ######################################## 
boxplot(Datos$Nomofobia,main= "Nomofobia")
boxplot(Datos$Ansiedad,main= "Ansiedad")
boxplot(Datos$Estr�s,main= "Estres")
boxplot(Datos$Compulsividad,main= "Compulsividad")
boxplot(Datos$`Habilidades blandas`,main= "Habilidades Blandas")
boxplot(Datos$`Resoluci�n de conflictos`,main= "Resolucion de Conflictos")
boxplot(Datos$Edad,main= "Edad")
boxplot(Datos$Nomofobia~Datos$G�nero,main= "Genero")

########### Pregunta 8 ######################################## 
DatosFinal<-Datos[c(-5,-11,-106),]
DatosFinal_Sin_Negativosa<-DatosFinal[c(-46,-41,-126,-31),]