#Here I will plot the temporal visualization of Texas over the years 2010-2023 except for year 2020

#the subsets I will use are
View(texas_share)
View(texas_gdp)

library(ggplot2)
library(dplyr)

#Add a type column to distinguish between GDP growth rate and Uninsured Share
texas_gdp$type = "GDP growth rate"
texas_share$type = "Uninsured Share"

#rename the columns to match
texas_share = texas_share %>%
  rename(gdp = value)

#combine the 2 dataframes
combined_data_texas = bind_rows(texas_gdp %>%
                                  select(year, gdp = growth_rate, type),
                                texas_share %>%
                                  select(year, gdp, type))

################################################################################

#plotting the lines from the 2 dataframes

ggplot() + 
  geom_line(data = texas_gdp, aes(x = year, y = growth_rate, color = "GDP Growth Rate"), size =1) +
  geom_line(data = texas_share, aes(x = year, y = gdp, color = "Uninsured Share"), size = 1) + 
  labs(title = "GDP growth rate and Uninsured Share in Texas 2010 - 2023, except 2020", x = "Year", y = "Percentage Points", color = "Type") +
  scale_y_continuous(breaks = seq(-2.5,25, by = 2.5), limits = c(-2.5,25)) + 
  scale_x_continuous(breaks = c(2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2021,2022,2023)) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

















