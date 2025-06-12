#Here I am trying to plot the spatial subset

################################################################################

library(maps)
library(dplyr)
library(ggplot2)

#getting the US map
us_map = map_data("state")

#clean up states names in both datasets
us_map$region = tolower(us_map$region)
spatial_df$state = tolower(spatial_df$state)

#join the map data with the subset data
us_map = left_join(us_map, spatial_df, by = c("region" = "state"))

#plot the map
ggplot(us_map, aes(x = long, y = lat, group = group, fill = value)) + 
  geom_polygon (color = "white") +
  scale_fill_gradient(low = "lightblue", high = "red", na.value = "white")+
  ggtitle("Share of Uninsured Population in the US, 2023")+
  labs(fill = "(%) Share of Uninsured Population") + 
  theme_void()
