library(tidyverse)
library(ggplot2)
library(dplyr)

# cambio por leyenda a continentes
gapminder %>% 
  filter(year == 2007) %>% 
  ggplot(aes(x = gdpPercap,
             y = lifeExp,
             color = continent)) +
  geom_point() +
  labs(color = 'LEYENDA')

# faceting muestra en 5 gráficas
gapminder %>% 
  filter(year == '2007') %>% 
  ggplot(aes(x = gdpPercap,
             y = lifeExp,
             color = continent)) +
  geom_point() +
  facet_wrap(~continent)

# Como combinar dos dataframes - unir dataframes
# col1 <- c(1,2,3)
# col2 <- c('Ana','Pedro','Juan')
# col4 <- c('Pedro', 'Juan', 'Carol')
x <- data.frame(col1 = c(1,2,3),
                col2 = c('Ana','Pedro','Juan'))
y <- data.frame(col1 = c(2,3,4),
                col2 = c('Pedro','Juan','Carol'))

# combina ambos vectores uno encima del otro
bind_rows(x,y)

# combina ambos vectores considerando los repetidos
union(x,y)

# guardar resultado de verbos de dplyr en variable
# variable dplyer
gapminder %>% 
  filter(year == 2007)

gapminder_2007 <- gapminder %>% 
  filter(year == 2007)
