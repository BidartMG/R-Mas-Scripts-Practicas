# Arboles de decisión para clasificación en R

# paquete de datos
install.packages('titanic')

# cargar librerías de análisis
library(tidyverse)

# cargar librerías de datos
library(titanic)
data("titanic_train")
head(titanic_train)

# cargar librerías para clasificación
install.packages("rpart")
library(rpart)
install.packages("rattle")
library(rattle)
install.packages("rpart.plot")
library(rpart.plot)

# modelando con árboles de decisión
arbol <- rpart(
  formula = Survived ~ Sex + Age,
  data = titanic_train,
  method = 'class'
)

# graficando el árbol
fancyRpartPlot(arbol)

# prediciendo con el árbol
pred_arbol <- predict(arbol, type = 'class')
titanic_pred <- cbind(titanic_train, pred_arbol)

# pasajero masculino de 4 años de edad
predict(object = arbol,
        newdata = data.frame(Age = 4,
                             Sex = 'male'),
        type = 'class')








