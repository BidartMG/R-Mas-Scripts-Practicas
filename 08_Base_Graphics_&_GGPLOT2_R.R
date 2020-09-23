# T2V4 - graficar en R

# Objetivo: diferenciar formas de graficar en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. graficar con base graphics
# 2. graficar con ggplot2

# DATO VIP: https://www.r-graph-gallery.com
# datos de la primera parte
year <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
varones <- 100
mujeres <- 120

# graficando con codigo
plot(x = year,
     y = disney)

# editando la grafica
plot(x = year,
    y = disney,
    main = 'disney',
    xlab = '',
    ylab = '',
    col = 'cornflowerblue', 
    pch = 16,
    panel.first = grid())
--------------- ###    EXPERIMENTANDO CON BARPLOT    ### ---------------

barplot(c(mujeres,varones),
        names.arg = c("Mujeres","Varones"),
        col = c("orange","green"),
                ylab = "Cantidad de Personas",
                main = "Personas dentro de un banco")

--------------- ###    EXPERIMENTANDO CON HIST    ### ---------------

hist()
--------------- ###    EXPERIMENTANDO CON PIE   ### ---------------
# Version 1.0 ya se tiene un vector con los valores a mostrar en %
label <- paste(disney,"%",sep = " ")
pie(disney,
    labels = label,
    clockwise = TRUE,
    main = "Grafica de No Se Que")

# Version 2.0
color <- c("white","aliceblue","cadetblue1","darkolivegreen1","darkolivegreen2","chartreuse","deepskyblue","black","pink")
pie(disney,
    labels = label,
    clockwise = TRUE,
    main = "Grafica de No Se Que 2",
    col = color )

# Version 3.0
legend("topright",c("11","13","11","8","12","11","12","8","10"),cex = 0.8,fill = color)

--------------- ###   FIN EXPERIMENTANDO   ### ---------------
# Graficas con ggplot2
# install.package(ggplot2) # para instalar ggplot2
library(ggplot2)

# hacer dataframe
peliculas <- data.frame(year, 
                        disney)

# graficar utilizando ggplot
ggplot(data = peliculas,
       mapping = aes(x = year,
                     y = disney)) +
  geom_point() +
  labs(title = 'Disney')
  



# fin