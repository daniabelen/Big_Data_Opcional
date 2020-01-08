# Big_Data_Opcional
###################Pregunta 1###################
Utilice el comando summary(Datos) para ver la media, mediana y percentiles correspondientes a cada variable.

###################Pregunta 2###################
use los comandos Kurtosis(Datos[-8]) y Skewness(Datos[-8]).Tambien  utilize el comando qqnorm para poder comprobar la normalidad de las variables, casi todas cumplen este requisito, excepto las variables "Habilidades Blandas" y "Resolucion de Conflicto" que estan ligeramente desviadas.

###################Pregunta 3###################
utilice el paquete StadisticalModeling y las variables de la base de datos llamada Datos.

###################Pregunta 4###################
Coheficientes
                     (Intercept)                     Datos$Ansiedad  
                        -0.68391                           0.01860  
              Datos$Compulsividad                        Datos$Estrés  
                         0.24266                           0.17216  
      Datos$`Habilidades blandas`   Datos$`Resolución de conflictos`  
                         0.03117                          -0.03944  
Datos$`Tiempo de uso del celular`                  Datos$GéneroMujer  
                         0.57086                           1.81707  
                       Datos$Edad  
                        -0.12678  
Los coheficientes, "habilidades Blandas" no tiene sentido ya que al poseer una persona mas habilidades blandas o comunicacionales deberia ser capaz de afrontar de mejor manera la perdida de su celular, es decir el coheficiente deberia ser negativo, cosa que ocurre con la "Resolucion de Conflictos" su coheficiente negativo parece ayudarlo a sobrellevar esta situacion.
  Variables como Compulsividad, Ansiedad, Estres, y tiempo en el celular son positivas, es decir un aumento en ellas provoca un aumento en la Nomofobia. Es importante ver la intensidad de los coheficientes, siendo el mas grande el "Tiempo en el celular" seguido por la Compulsividad, la logica indicaria que la ansiedad deberia jugar un factor importante en la Nomofobia.
  
###################Pregunta 5###################
Df Sum Sq Mean Sq F value   Pr(>F)    
Datos$Ansiedad                      1   1813    1813   3.894 0.050756 .  
Datos$Compulsividad                 1   9368    9368  20.127 1.67e-05 ***
Datos$Estrés                        1   6699    6699  14.392 0.000234 ***
Datos$`Habilidades blandas`         1    421     421   0.905 0.343372    
Datos$`Resolución de conflictos`    1      1       1   0.003 0.956904    
Datos$`Tiempo de uso del celular`   1  23935   23935  51.423 6.63e-11 ***
Datos$Género                        1    106     106   0.227 0.634662    
Datos$Edad                          1     17      17   0.036 0.849150    
Residuals                        120  55855     465                     
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
En este analisis solo son significantes la compulsividad, el estres y el tiempo de uso del celular, por otro lado la ansiedad esta ligeramente fuera del rango sin embargo posee una significancia aceptable.

###################Pregunta 6###################
El histograma es de Nomofobiamuestra que la mayoria de los datos se encuentran al rededor de 20-30 y 40-50, lo cual no sigue una distribucion de campana. tiene una distribucion bastante equitativa a lo largo del valor.
El Boxplot lo realice de Ansiedad, el cual se comporta bastante normal, una media de 50, percentil 75 de 75 y percentil 25 de 25, tambien los limites superior e inferior son el 100 y el 0 respectivamente.
El Barchart o grafico de barras se realizo con la variable Genero donde se evidencia que las cantidades de hombres y mujeres tomados en esta muestra son casi los mismos, hombres supera ligeramente a las mujeres.

###################Pregunta 7###################

realice los boxplots de todas las variables para ver si existe outliers y la unica que tiene es la variable Ansiedad. se supone que los valores van desde el 1 hasta el 100.

###################Pregunta 8###################
Los outliers deben ser eliminados ya que manchan la muestra de los datos, estos sobresalen y ensucian la media y desviacion estandar de la variable. 


