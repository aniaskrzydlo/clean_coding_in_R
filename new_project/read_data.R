library(dplyr)

data <- read.csv("data/example_data.csv") %>%
  filter(animal == "dog")

