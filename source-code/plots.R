# Jamali, Sumair

# Question 0
rm(list = ls())
library(tidyverse)

# Question 1, Part A
countriesData <- read.csv("datasets/countries.csv", stringsAsFactors = TRUE)

# Question 1, Part B
summary(countriesData)
# There are 58 countries with missing ecological_footprint_2000 data.

# Question 1, Part C
# There are 44 countries in Asia.

# Question 1, Part D
# measles_immunization_oneyearolds is a numerical, discrete variable because
# the values are whole-number percentages. fines_for_tobacco_advertising_2014
# is a categorical, non-ordinal variable (Yes or No).

# Question 1, Part E
ggplot(countriesData,
       aes(x = continent, y = measles_immunization_oneyearolds)) +
  geom_boxplot()

# South America has the most symmetrical distribution. Its median (about 93)
# is near the center of the box, between Q1 = 89 and Q3 = 98. Its whiskers
# extend only to about 85 and 99, and there are no outliers.

# Question 1, Part F
ggplot(countriesData, aes(x = ecological_footprint_2000)) +
  geom_histogram()

# The distribution of ecological_footprint_2000 is right-skewed.

# Question 1, Part G
# The summary supports right skew: the mean (3.15) is higher than the median
# (2.14), and the upper tail extends from Q3 = 4.87 to the maximum of 15.99.
