##################################################
# Objetivo: Hacer gr�ficas animadas con ggplot2  #
##################################################
# En este ejercicio vamos a:
# 1. gr�fica b�sica
# 2. animando gr�fica
# 3. mejorando animaci�n

# cargando libreria tidyverse
library(tidyverse)
 
# instalando paquete para animar
install.packages("gganimate")
library(gganimate)

install.packages("gifski")
library(gifski)

# instalando paquete con los datos
install.packages("gapminder")

# cargando paquete con los datos
library(gapminder)

# cargando datos a entorno
data("gapminder")

# cargando datos a entorno
head(gapminder)

##########################
# 1. Gr�fica B�sica      #
##########################
gapminder %>% 
  group_by(year, continent) %>% 
  summarize(mean_life = mean(lifeExp)) %>% 
  ggplot(aes(x = year,
             y = mean_life,
             color = continent)) + 
  geom_line()

##########################
# 2. Animando B�sica     #
##########################
gapminder %>% 
  group_by(year, continent) %>% 
  summarise(mean_life = mean(lifeExp)) %>% 
  ggplot(aes(x = year,
             y = mean_life,
             color = continent)) +
  geom_line() +
  transition_reveal(year)


###############################
# 3. Mejorando Animaci�n      #
###############################
gapminder %>% 
  group_by(year, continent) %>% 
  summarise(mean_life = mean(lifeExp)) %>% 
  ggplot(aes(x = year,
             y = mean_life,
             color = continent)) +
  geom_line(size = 2) +
  geom_point(size = 4) +
  labs(title = 'Esperanza de vida en {frame_along}',
       x = 'Fecha',
       y = 'A�os de vida') +
  theme_minimal() +
  transition_reveal(year)






