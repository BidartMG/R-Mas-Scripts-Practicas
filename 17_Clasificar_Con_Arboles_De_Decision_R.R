# Arboles de decisi�n para clasificaci�n en R

# paquete de datos
install.packages('titanic')

# cargar librer�as de an�lisis
library(tidyverse)

# cargar librer�as de datos
library(titanic)
data("titanic_train")
head(titanic_train)

# cargar librer�as para clasificaci�n
install.packages("rpart")
library(rpart)
install.packages("rattle")
library(rattle)
install.packages("rpart.plot")
library(rpart.plot)

# modelando con �rboles de decisi�n
arbol <- rpart(
  formula = Survived ~ Sex + Age,
  data = titanic_train,
  method = 'class'
)

# graficando el �rbol
fancyRpartPlot(arbol)

# prediciendo con el �rbol
pred_arbol <- predict(arbol, type = 'class')
titanic_pred <- cbind(titanic_train, pred_arbol)

# pasajero masculino de 4 a�os de edad
predict(object = arbol,
        newdata = data.frame(Age = 4,
                             Sex = 'male'),
        type = 'class')








