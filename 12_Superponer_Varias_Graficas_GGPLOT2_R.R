library(ggplot2)

data("iris")
head(iris)

# ejemplo 1: puntos y líneas
ggplot(data = iris,
       mapping = aes(x = Sepal.Length,
                     y = Sepal.Width,
                     color = Species)) +
  geom_point() + 
  geom_smooth(method = 'lm')

# ejemplo 2: varias líneas
# una línea
ggplot(data = iris[iris$Species == 'setosa',],
       mapping = aes(x = 1:50,
                     y = Petal.Width)) +
  geom_line()

# todas las líneas
ggplot(data = iris,
       mapping = aes(x = rep(1:50,3),
                     y = Petal.Width,
                     color = Species)) +
  geom_line()

# boxplot con puntos
ggplot(data = iris,
       mapping = aes(x = Species,
                     y = Petal.Width,
                     fill = Species)) +
  geom_boxplot() +
  geom_jitter()


