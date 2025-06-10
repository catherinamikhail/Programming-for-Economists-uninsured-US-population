#Here I am making a new variable which is the GDP growth rate of the states

#renaming the table
table_GDP = Table_GDP_absolute_values_Table_3_

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
