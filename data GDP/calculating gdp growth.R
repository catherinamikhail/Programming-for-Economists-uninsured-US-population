#Here I am making a new variable which is the GDP growth rate of the states

#renaming the table
table_GDP = Table_GDP_absolute_values_Table_3_

#class coercion of double to numeric of all columns but the first column
table_GDP[, -1] = lapply(table_GDP[, -1], as.numeric)

#checking the class
sapply(table_GDP, class)

#yes, all the numbers are now numeric instead of the first column with the names of the states

library(dplyr)
library(tidyr)

# Pivot longer
gdp_long <- table_GDP %>%
  pivot_longer(
    cols = -GeoName,
    names_to = "year",
    values_to = "gdp"
  ) %>%
  mutate(year = as.integer(year))

View(table_GDP)
View(gdp_long)

# Calculate GDP growth rate
gdp_growth <- gdp_long %>%
  group_by(GeoName) %>%
  arrange(year) %>%
  mutate(growth_rate = (gdp - lag(gdp)) / lag(gdp) * 100)

View(gdp_growth)

#delete rows from 2009
gdp_growth = gdp_growth[-c(1:45), ]

View(gdp_growth)
