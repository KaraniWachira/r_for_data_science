# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("data/penguins.csv")
View(penguins)

# mutate() ----------------------------------------------------------------

# Use mutate() to create a variable called observation_station and set its value to "Palmer"
penguins %>% 
  mutate(observation_station = "Palmer")

# 2. Create a new variable based on other variables:

penguins %>% 
  mutate(bill_gurth = bill_length_mm + bill_depth_mm)

# 3. Change an existing variable

penguins %>% 
  mutate(bill_length_mm = bill_length_mm + 10)
  
  
  
  