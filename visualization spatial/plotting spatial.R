#Here I am trying to plot the spatial subset

library(ggplot2)
library(dplyr)
ggplot(us_map, aes(x = long, y =lat, group = group)) + geom_polygon(aes(fill = value)) + 
  scale_fill_gradient(low = "lightblue", high = "red", na.value = "white") + ggtitle("Share of Uninsured Population US, 2023") + guides(fill = guide_colorbar(title = "Percentage Share Uninsured"))

match(us_map$region, spatial_df$state)

us_map$region = tolower(trimws(us_map$region))
spatial_df$state = tolower(trimws(spatial_df$state))

us_map = left_join(us_map, spatial_df, by = c("region" = "state"))

