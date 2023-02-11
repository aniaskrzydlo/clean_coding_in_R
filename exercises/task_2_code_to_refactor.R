library(dplyr)

data_setosa <- iris %>%
  filter(Species == "setosa")

sepal_length_setosa <- mean(data_setosa$Sepal.Length)

data_versicolor <- iris %>%
  filter(Species == "versicolor")

sepal_length_versicolor <- mean(data_versicolor$Sepal.Length)

data_virginica <- iris %>%
  filter(Species == "virginica")

sepal_length_virginica <- mean(data_virginica$Sepal.Length)

mean_sepal_length <- c(setosa = sepal_length_setosa, versicolor = sepal_length_versicolor, virginica = sepal_length_virginica)
