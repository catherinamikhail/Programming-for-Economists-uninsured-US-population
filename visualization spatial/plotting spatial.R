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
  geom_polygon (color = "black") +
  scale_fill_gradient(low = "lightblue", high = "red", na.value = "white")+
  ggtitle("Share of Uninsured Population in the US, 2023")+
  labs(fill = "(%) Share of Uninsured Population") + 
  theme_void() 

#I still need the state Alaska but the package maps does not include the state Alaska

# I am trying it here again including Alaska

library(rnaturalearth)
library(ggplot2)
library(dplyr)

#get US shapefile
us_states = ne_states(country = "United States of America", returnclass = "sf")

#convert state names into lowercase letters such that they match
us_states$name = tolower(us_states$name)

#merge data with shapefile
us_states_data = us_states %>%
  left_join(spatial_df, by = c("name" = "state"))

#plot the map with the data
ggplot(us_states_data) + 
  geom_sf(aes(fill = value)) + 
  theme_void() + 
  scale_fill_gradient( low = "lightblue", high = "darkred", na.value = "white") + 
  ggtitle("Share of Uninsured Population in the US, 2023") +
  labs(fill = "(%) Share of Uninsured Population") + 
  theme(legend.position = "bottom",legend.key.height = unit(0.5, "cm"),legend.justification = "left",plot.margin = unit(c(0.5,1,1,2), "cm"), plot.title = element_text(margin = margin(b = 25)), aspect.ratio = 0.3) +
  coord_sf(expand = F)
  


