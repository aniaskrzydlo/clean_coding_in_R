library(dplyr)

# Using dplyr
mean_sepal_length <- iris %>%
  group_by(Species) %>%
  summarise(mean_sepal_length = mean(Sepal.Length)) %>%
  pull(mean_sepal_length, name = Species)



# Using loops
mean_sepal_length <- c()

for (spec in unique(iris$Species)) {
  
  current_mean <- mean(iris$Sepal.Length[iris$Species == spec])
  mean_sepal_length <- c(mean_sepal_length, current_mean)
  names(mean_sepal_length)[length(mean_sepal_length)] <- spec
  
}