# Acciones o Verbos de dplyr
# mutate(): = crea nuevas variables
# select(): = toma variables seg�n su nombre
# filter(): = toma variables seg�n su condici�n
# summarise(): = reduce muchos valores en un �nico resumen
# arrange(): = cambia el orden de los datos
# group_by(): = operaciones por grupos

# T3V2 - manipulaci�n de datos

# Objetivo: diferenciar formas de graficar en R
#-------------------------------------------------------------
# En este ejercicio vamos a:
#1. cargar datos de gapminder
#2. filtrar datos
#3. hacer res�menes de datos

#################################
# 1. cargar datos de gapminder  #
#################################

# instalando paquete con los datos
install.packages("gapminder")

# cargando paquete con los datos
library(gapminder)

# cargando datos a entorno
data("gapminder")

# cargando datos a entorno
head(gapminder)

#################################
# 2. filtrar datos con dplyr    #
#################################

install.packages("tidyverse")
library(tidyverse)

# filtrar datos por pais sin %>%
filter(gapminder, country == 'Mexico')

# filtrar datos por pa�s 
# para hacer %>% en RStudio (ctrl + shift + M)
gapminder %>% 
  filter(country == 'Mexico')

# filtrar datos por a�o
gapminder %>% 
  filter(year == 2002)

# filtrar pa�ses con esperanza de vida 
# menor o igual a 40 y el a�o en 2002
gapminder %>% 
  filter(lifeExp <= 40,
         year == 2002)

#################################
# 3. hacer res�menes de datos   #
#################################

# cantidad de pa�ses en Asia
gapminder %>% 
  filter(continent == 'Asia',
         year == 2007) %>% 
  summarise(conteo = n())

# m�xima esperanza de vida
gapminder %>% 
  summarise(max_lifeExp = max(lifeExp))

# agrupando esperanza de vida promedio por a�o
gapminder %>% 
  group_by(year) %>% 
  summarise(prom_vida = mean(lifeExp))

