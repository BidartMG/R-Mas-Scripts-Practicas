# T2V5 - histogramas en R

# Objetivo: graficar histogramas en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. histogramas con base graphics
# 2. histogramas con ggplot2

# cargando los datos
data("mtcars")

# haciendo histograma b�sico
hist(mtcars$hp)

# editando histograma
hist(mtcars$hp,
     # breaks = 50,
     breaks = seq(50,350,50), # inicio, fin, salto
     col = 'darkgray',
     border = 'gray10',
     main = 'Titulo',
     xlab = 'Variable X',
     ylab = 'Conteo')

# cargar ggplot2
# install.packages("ggplot2")
library(ggplot2)

# hacer un histograma en ggplot2
ggplot(data = mtcars,
       mapping = aes(x = hp)) +
        geom_histogram(bins = 9)


# haciendo m�s cosas interesantes
ggplot(data = mtcars,
       mapping = aes(x = hp,
                     fill = factor(vs))) +
        geom_histogram(bins = 9,
                       position = 'identity',
                       alpha = 0.8) +
        labs(title = 'T�tulo',
             fill = 'vs motor',
             x = 'Caballos de fuerza',
             y = 'Conteos',
             subtitle = 'Subt�tulo',
             caption = 'Fuente de los datos')
        






# fin