# Load Packages -----------------------------------------------------------

# Load the tidyverse package

library(tidyverse)

# Import Data -------------------------------------------------------------

# Download data from https://rfor.us/penguins
# Copy the data into the RStudio project
# Create a new R script file and add code to import your data

penguins <- read_csv("penguins.csv")

# filter() ----------------------------------------------------------------

# Use filter() to only keep female penguins

# YOUR CODE HERE

# Use filter() to only keep penguins NOT on Torgersen island

# YOUR CODE HERE

# Use filter() to only keep penguins on Torgersen island or Biscoe island
# Use the or logical operator (|) to do this

# YOUR CODE HERE

# Rewrite your filter() code above to keep the penguins from Torgersen island or Biscoe island
# This time, though, use the %in% operator

# YOUR CODE HERE

# Use a comparison operator to keep penguins with flipper lengths greater than or equal to 193 millimeters

# YOUR CODE HERE

# Drop any rows that have missing data in the flipper_length_mm variable

# Do this first with !is.na()

# YOUR CODE HERE

# Do this a second time with drop_na()

# YOUR CODE HERE