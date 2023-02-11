library(dplyr)
library(ggplot2)

raw_data <- iris

select_columns <- function(d, cols) {
  d[, cols]
}

data <- select_columns(raw_data, c("Species", "Sepal.Length", "Sepal.Width"))
colnames(data) <- c("species", "length", "width")

data %>%
  filter(length > 5) %>%
  ggplot(aes(x = width, y = length, color = species)) +
  geom_point() +
  ggtitle("Sepal length and width coloured by species")
