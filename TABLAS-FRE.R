
#____tablas de frecuencia____
#utilizamos la matriz iris

#____________________________
# Exploración de la matriz
#____________________________

#1.- Exportación de matriz
data(iris)

#.- Exploración de la matriz
#Tenemos 150 individuos y 5 variables
dim (iris)

#3.- Nombre de las columnas
colnames (iris)

#4.- Exploración de especies
iris$Species

#5.- Tipos de variables
str(iris)

#6.- En busca de valores perdidos
anyNA(iris)

#__________________________________
# Generación de tablas NO AGRUPADAS
#__________________________________

#1.- Convertir la matriz de datos a un data frame,
#se agrupan los valores para la variable Petal. Length
# y se calcula la frecuencia absoluta.

tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

#2.- visualización de la tabla de contingencia de 
#la variable Pental. length(PL) y su respectiva frecuencia
#absoluta
tabla_PL

#3.- crear la tabla completa
tabla1<-transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAC=round(cumsum(prop.table(Freq)),3))

#________________________________________
#Tablas agrupadas
#________________________________________
#Nota: se debe tener previamente el cálculo
# de la amplitud y Rango.

#1.- Agrupación de la variable en clases (8 clases)
tabla_clases<-as.data.frame(table(Petal.Length=factor(cut(iris$Petal.Length,
                                                          breaks=8))))

table_clases

#2.- Construcción de la tabla completa
tabla2<-transform(tabla_clases,
                  freqAc=cumsum(Freq),
                  Rel=round(prop.table(Freq),3),
                  RelAC=round(cumsum(prop.table(Freq)),3))
