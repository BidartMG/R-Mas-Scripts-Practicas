# video 07 - factores

# Objetivo: estudiar qué son factores en R.
# ---------------
# En este ejercicio vamos a:
# 1. Crear factores en R
# 2. Recodificar niveles de un factor
# 3. Ordenar niveles de un factor

#####################################
# correr esto antes de empezar.   #
#####################################

# crear vector de ventas
tallas <- c('m', 'g', 'S', 'S','m', 'M')

# intentar graficar
plot(tallas)

###################################
# práctica 1: crear factores en R #
###################################

# crear factor de un vector
tallas_factor <- factor(tallas)

# graficar factor
plot(tallas_factor)

# mirar niveles de factor
levels(tallas_factor)

######################################
# práctica 2: recodificando factores #
######################################

# creando factor recodificado
tallas_recodificado <- factor(tallas,
                              levels = c('m', 'g', 'S', 'S','m', 'M'),
                              labels = c("M","G","S","S","M","M"))

# graficando ventas_recodificado
plot(tallas_recodificado)

#############################################
# práctica 3: ordenando niveles de factores #
#############################################

# ordenando niveles (copiar factor anterior)
tallas_ordenado <- factor(tallas,
                              ordered = TRUE,
                              c('S', 'S','m', 'M','m', 'g'),
                              labels = c("S","S","M","M","M","G"))

# viendo el orden en los niveles
tallas_ordenado

# graficando el factor ordenado
plot(tallas_ordenado)

