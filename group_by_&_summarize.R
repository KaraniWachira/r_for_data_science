# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("data/penguins.csv")
view(penguins)

# group_by() and summarize() ----------------------------------------------

# Calculate the weight of the heaviest penguin on each island.

penguins %>% 
  group_by(island) %>% 
  summarize(body_mass = max(body_mass_g, na.rm = TRUE))

# Calculate the weight of the heaviest penguin on each island for each year.

penguins %>% 
  group_by(island, year) %>% 
  summarise(heaviest_penguin = max(body_mass_g, na.rm = TRUE))



