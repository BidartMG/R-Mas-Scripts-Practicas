# T2V7 - importar datos csv a R

# Objetivo: aprender a importar archivos csv a R
# ------------------------------------------------
# En este ejercicio vamos a aprender:
# 1. Que necesitas antes de empezar
# 2. Cómo importar datos utilizando código de R
# 3. Cómo importar datos con la interfaz de RStudio


#####################################
# 1. Que necesitas antes de empezar #
#####################################

# instalar paquete readr
 install.packages("readr")

# cargar paquete readr
library(readr)

# buscar la ruta del archivo de csv
file.choose()

# Copiar ruta de la consola y guardar en variable
ruta_csv <- "D:\\ORT 2020 2C\\Scripts_Practicas\\casos_csv\\gapminder.csv"


#####################################
# 2. importar csv con código de R #
#####################################

# importar datos gapminder
gapminder <- read_csv(ruta_csv)

# mirar datos
head(gapminder)

# caso no titulo
file.choose()
ruta_sintitulo <- "D:\\ORT 2020 2C\\Scripts_Practicas\\casos_csv\\gapminder_col_names.csv"

gapminder_sintitulo <- read_csv(ruta_sintitulo,
                                col_names = FALSE)
# para agregar nombre
gapminder_contitulo <- read_csv(ruta_sintitulo,
                                col_names = c('pais',
                                              'anio',
                                              'vida',
                                              'poblacion'))

# caso punto y coma
file.choose()
ruta_puntoycoma <- "D:\\ORT 2020 2C\\Scripts_Practicas\\casos_csv\\gapminder_puntoycoma.csv"
gapminder_puntoycoma <- read_csv2(ruta_puntoycoma)


########################################
# 3. importar csv con interfaz RStudio #
########################################

# ir a File > Import Dataset > From Text (readr)

# código que genera y ejecuta R automáticamente

# > library(readr)
# > gapminder <- read_csv("D:/ORT 2020 2C/Scripts_Practicas/casos_csv/gapminder.csv")


# fin