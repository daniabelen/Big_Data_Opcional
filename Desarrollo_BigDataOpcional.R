
########### Pregunta 1 #######################

Datos<-read_excel("Big_Data_Opcional/246544_Datos_Nomofobia.xlsx")
summary(Datos)

hist(Datos$Nomofobia)
hist(Datos$Ansiedad)
hist(Datos$Estrés)
hist(Datos$Compulsividad)
hist(Datos$`Habilidades blandas`)
hist(Datos$`Resolución de conflictos`)
hist(Datos$Edad)


########### Pregunta 2 ########################
library(moments)
skewness(Datos[-8])
kurtosis(Datos[-8])
qqnorm(Datos$Nomofobia)
qqnorm(Datos$Ansiedad)
qqnorm(Datos$Estrés)
qqnorm(Datos$Compulsividad)
qqnorm(Datos$`Habilidades blandas`)
qqnorm(Datos$`Resolución de conflictos`)
qqnorm(Datos$Edad)

########### Pregunta 3 ######################
Regresion<-lm(Datos$Nomofobia~Datos$Ansiedad+Datos$Compulsividad+Datos$Estrés+Datos$`Habilidades blandas`+Datos$`Resolución de conflictos`+Datos$`Tiempo de uso del celular`+Datos$Género+Datos$Edad)
Regresion

########### Pregunta 5 #####################
Anova<-aov(Datos$Nomofobia~Datos$Ansiedad+Datos$Compulsividad+Datos$Estrés+Datos$`Habilidades blandas`+Datos$`Resolución de conflictos`+Datos$`Tiempo de uso del celular`+Datos$Género+Datos$Edad)
summary(Anova)

########### Pregunta 6 ######################################## 
hist(Datos$Nomofobia)
boxplot(Datos$Ansiedad)
barchart(Datos$Género)

########### Pregunta 7 ######################################## 
boxplot(Datos$Nomofobia,main= "Nomofobia")
boxplot(Datos$Ansiedad,main= "Ansiedad")
boxplot(Datos$Estrés,main= "Estres")
boxplot(Datos$Compulsividad,main= "Compulsividad")
boxplot(Datos$`Habilidades blandas`,main= "Habilidades Blandas")
boxplot(Datos$`Resolución de conflictos`,main= "Resolucion de Conflictos")
boxplot(Datos$Edad,main= "Edad")
boxplot(Datos$Nomofobia~Datos$Género,main= "Genero")

########### Pregunta 8 ######################################## 
DatosFinal<-Datos[c(-5,-11,-106),]
DatosFinal_Sin_Negativosa<-DatosFinal[c(-46,-41,-126,-31),]