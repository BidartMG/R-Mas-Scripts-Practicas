# T2V5 - graficas de barras en R

# Objetivo: hacer graficas de barras en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. graficas de barras con base graphics
# 2. graficas de barras con ggplot2

# cargando los datos
data(mtcars)

# viendo los datos
head(mtcars,10)

# generando tabla agrupada
table(mtcars$cyl)

# grafica de barras basica
barplot(table(mtcars$cyl))

# editando grafica de barras
barplot(table(mtcars$cyl),
        horiz = TRUE,
        col = 'green',
        border = 'red',
        main = 'Gráfica de Barras',
        sub = 'Subtítulo',
        xlab = 'Cilindros',
        ylab = 'Cantidad')

# cargar ggplot2
# install.packages("ggplot2")
library(ggplot2)

# grafica de barras
ggplot(data = mtcars,
       mapping = aes(x = factor(cyl))) +
  geom_bar() + coord_flip()

# guardando grafica en variable
p <- ggplot(data = mtcars,
            mapping = aes(x = factor(cyl),
                          fill = factor(gear)))

# stacked bar chart
p + geom_bar(position = 'stack', stat = 'count')

# dogde bar chart
p + geom_bar(position = 'dodge', stat = 'count')

# stacked + percent barchart
p + geom_bar(position = 'fill', stat = 'count')

# FIN