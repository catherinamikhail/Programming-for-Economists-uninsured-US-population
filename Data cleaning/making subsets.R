#Here I am making a sub dataframe for the spatial visualization of 2023 of all the states with available data

library(dplyr)

spatial_df = all_states %>%
  filter(year == 2023, series == "Uninsured.Share") %>%
  select(state, value)

#deleting unnecessary rows
spatial_df = spatial_df[-c(45:396),]


#Here I am making a sub dataframe for the temporal visualization with the mean of the US uninsured share per year

temp_df = all_states %>%
  filter(series == "Uninsured.Share") %>%
  group_by(year)%>%
  summarise(mean_uninsured = mean(value, na.rm = TRUE))

#Here I am making a sub-dataframe for the temporal visualization with the GDP growth rates of the US from 2010-2023 except for 2020
us_gdp = gdp_growth %>%
  filter(GeoName == "United States")%>%
  select(year, growth_rate)

#Here I am making a sub-dataframe for the sub-population visualization where we compare uninsured shares of people with the lowest income level of under the 25,000 dollars and the highest income level of 100,000 dollars and over
low_income_share = all_states %>%
  filter(year == 2023, `Label (Grouping)` =="Under$25,000", series=="Total.Uninsured") 

  

str(all_states_100)
















#here I am visualizing the spatial variation of the US of the share of uninsured population in 2023
install.packages("sf")
library(sf)
install.packages("geojsonR")
library(geojsonR)
install.packages("usmap")
library(sf)
library(ggplot2)
library(dplyr)
library(usmap)  # for convenience

# Get shapefile for US states as sf object
us_states <- usmap::us_map("states") %>%
  st_as_sf()

# Merge your data
us_states <- us_states %>%
  mutate(state = tolower(full)) %>%
  left_join(spatial_df, by = "state")

# Plot
ggplot(us_states) +
  geom_sf(aes(fill = value), color = "white") +
  scale_fill_continuous(type = "viridis") +
  theme_void() +
  labs(title = "US Share Uninsured Population, 2023")

