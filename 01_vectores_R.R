# video 05 - Vectores

# Objetivo: estudiar qu� es una vector en R.
# --------------------------------------------
# En este ejercicio vamos a:
# 1. Crear vectores en un script
# 2. Realizar opraciones aritm�ticas con vectores
# 3. Seleccionar elementos en un vector

#####################################
# pr�ctica 1: creando vectores en R #
#####################################

# crear vector car�cter con nombre de las pel�culas
titulo <- c("Shrek","Shrek 2","Shrek Tercero","Shrek: Felices por siempre")

# crear vector num�rico con puntuaci�n de las pel�culas
puntuacion <- c(7.9,7.2,6.1,6.3)

# crear vector l�gico sobre si la pel�cula es posterior a 2015
posterior_2005 <- c(FALSE,FALSE,TRUE,TRUE)

####################################################
# pr�ctica 2: operaciones aritm�ticas con vectores #
####################################################

# sumar 2 a la puntuaci�n
puntuacion + 2

# dividir la puntuaci�n entre 2
puntuacion / 2

# crea la puntuaci�n de Monica
puntuacion_de_monica <- c(10,9,6,7)

# calcular diferencia entre puntuaciones
puntuacion_de_monica - puntuacion

# calcular la longitud del vector
length(puntuacion)

# calcular el promedio del vector puntuacion
mean(puntuacion)

###################################################
# pr�ctica 3: selecci�n de elementos de un vector #
###################################################

## selecci�n basada en posici�n
# seleccionar la tercera pel�cula
titulo[3]

# seleccionar la primera y la �ltima pel�cula
titulo[c(1,4)]

## selecci�n basada en condici�n l�gica
# crear condici�n l�gica
puntuacion_baja <- puntuacion < 7

# mostrar condici�n para ver TRUE/FALSE
puntuacion_baja

# mostrar puntuaciones bajas
puntuacion[puntuacion_baja]

# mostrar nombres de pel�culas con puntuaciones bajas
titulo[puntuacion_baja]

