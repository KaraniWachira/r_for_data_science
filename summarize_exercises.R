# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("data/penguins.csv")
view(penguins)

# Calculate the weight of the heaviest penguin.
# Don't forget to drop NAs!

wght_heaviest <- penguins %>% 
  drop_na(body_mass_g) %>% 
  summarise(max_body_weight = max(body_mass_g))

View(wght_heaviest)
  
# Calculate the minimum and maximum weight of penguins in the dataset.

wght_min_max <- penguins %>% 
  drop_na(body_mass_g) %>% 
  summarize(max_body_weight = max(body_mass_g), min(body_mass_g))

View(wght_min_max)

penguins |> 
  summarize(max_body_mass = max(body_mass_g, na.rm = TRUE),
            min_body_mass = min(body_mass_g, na.rm = TRUE))


