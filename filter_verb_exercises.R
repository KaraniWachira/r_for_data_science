# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("data/penguins.csv")

View(penguins)

# filter() ----------------------------------------------------------------

# Use filter() to only keep female penguins

female_penguins <- filter(penguins, sex == 'female')
head(female_penguins)

# Use filter() to only keep penguins NOT on Torgersen island

fe_peng_not_torgersen <- filter(
  penguins,
  island != 'Torgersen'
)

View(fe_peng_not_torgersen)

# Use filter() to only keep penguins on Torgersen island or Biscoe island
# Use the or logical operator (|) to do this

peng_on_torg_bis <- filter(
  penguins,
  island == 'Torgersen' | island == 'Biscoe'
)

View(peng_on_torg_bis)

# Rewrite your filter() code above to keep the penguins from Torgersen island or Biscoe island
# This time, though, use the %in% operator

penguins %>% 
  filter(island %in% c("Biscoe", "Torgersen"))

View(penguins)

# Use a comparison operator to keep penguins with flipper lengths greater than or equal to 193 millimeters

flipper_leng <- penguins %>% 
  filter(flipper_length_mm >= 193)

View(flipper_leng)

# Drop any rows that have missing data in the flipper_length_mm variable
# Do this first with !is.na()

drop_na_flip <- penguins %>% 
  filter(!is.na(flipper_length_mm)) %>% 
  view()


# Do this a second time with drop_na()

drop_na_flip_02 <- penguins %>% 
  drop_na(flipper_length_mm)

View(drop_na_flip_02)


