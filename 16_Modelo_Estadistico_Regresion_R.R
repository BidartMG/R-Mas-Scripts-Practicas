# modelos

# cargando paquete para analizar datos
library(tidyverse)

# cargando datos a entorno
data("Orange")

# cargando datos a entorno
head(Orange)

# problema/pregunta
# Cuanto medirá la circunsferencia, en promedio, de
# un árbol de naranjas a los 800 días de plantarlo
Orange %>% 
  ggplot(aes(x = age,
             y = circumference)) +
  geom_point() +
  geom_abline(intercept = 10,
              slope = 0.1,
              col = 'blue')

# "mejor" ajuste de regresión lineal simple
lm(circumference ~ age, data = Orange)

Orange %>% 
  ggplot(aes(x = age,
             y = circumference)) +
  geom_point() +
  geom_abline(intercept = 17.3997,
              slope = 0.1068,
              col = 'blue') +
  geom_vline(xintercept = 800,
             col = 'red')

dias <- 800
medida <- 0.1068 * dias + 17.3997
print(medida)

