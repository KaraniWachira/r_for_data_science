


# # Load Packages -----------------------------------------------------------

library(tidyverse)
library(readr)

# Import Data -------------------------------------------------------------

penguins <- read_csv("data/penguins.csv")
glimpse(penguins)
# Scatterplots ------------------------------------------------------------

# Make a scatterplot that shows flipper length on the x axis and body mass on the y axis.

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_line() +
  labs(
    "Scatterplot showng flipper length against the body mass"
  )















