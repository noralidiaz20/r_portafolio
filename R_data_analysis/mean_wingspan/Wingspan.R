## Exercise: Mean wingspan (cm) of four bird species
## Author: Norali Diaz
## Date: 29/12/2025
## Objective: Create a barplot of the mean wingspan for each species

# Set Work Directory ----
#setwd()

# Install packages ----
#install.packages("dplyr")

# Load library ----
library(dplyr)

# Import data ----
w <- read.csv("Wingspan.csv")

# Check data structure ----
str(w)
summary(w)

# Convert species to factor ----
w$bird_sp <- as.factor(w$bird_sp)

# Calculate mean wingspan per species ----
mean_wingspan <- w %>%
        group_by(bird_sp) %>%
        summarise(mean_wingspan = mean(wingspan))

# Create barplot ----
barplot(mean_wingspan$mean_wingspan,
        names.arg = mean_wingspan$bird_sp,
        col = "lightblue",
        main = "Mean Wingspan by Bird Species",
        xlab = "Bird species",
        ylab = "Mean wingspan (cm)",
        ylim = c(0, 200))


