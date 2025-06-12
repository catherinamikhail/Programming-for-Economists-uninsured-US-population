#Here I am making a sub dataframe for the spatial visualization of 2023 of all the states with available data

library(dplyr)

spatial_df = all_states %>%
  filter(year == 2023, series == "Uninsured.Share") %>%
  select(state, value)

#deleting unnecessary rows
spatial_df = spatial_df[-c(45:396),]


#Here I am making a sub dataframe for the temporal visualization with the GDP growth rate of Texas and another subset of the share of uninsured population in the US over the years

#subset Texas
texas_share = all_states_100 %>%
  filter(state == "Texas",
         year %in% 2010:2023,
         series == "Uninsured.Share")

#cleaning out the NA rows of subset Texas
texas_share = texas_share[-c(2:9),]
texas_share = texas_share[-c(3:10),]
texas_share = texas_share[-c(4:11),]
texas_share = texas_share[-c(5:12),]
texas_share = texas_share[-c(6:13),]
texas_share = texas_share[-c(7:14),]
texas_share = texas_share[-c(8:15),]
texas_share = texas_share[-c(9:16),]
texas_share = texas_share[-c(10:17),]
texas_share = texas_share[-c(11:18),]
texas_share = texas_share[-c(12:19),]
texas_share = texas_share[-c(13:20),]
texas_share = texas_share[-c(14:21),]


#subset GDP growth of texas of the years 2010-2023 except for 2020
library(dplyr)
texas_gdp = gdp_growth %>%
  filter(GeoName == "Texas",
         year %in% 2010:2023) %>%
  select(year, growth_rate)



#Here I am making a sub-dataframe for the sub-population visualization where we compare uninsured shares of people with the lowest income level of under the 25,000 dollars and the highest income level of 100,000 dollars and over
 
#sub dataframe $25,000 to $49,999 with the total uninsured share values (2017) 
middle_income = all_states_100[ all_states_100$`Label (Grouping)` == ("$25,000 to $49,999"),]
high_income = all_states_100[all_states_100$`Label (Grouping)` == ("$100,000 and over"),]



#Here I am making a sub dataframe for the event analysis of the implementation of stricter conditions for Medicaid in 2018 in Arkansas

#sub dataframe Arkansas share uninsured for all the years
arkansas_event =  all_states %>%
  filter(state == "Arkansas", series == "Uninsured.Share") %>%
  select(state,year, value)

#deleting rows
arkansas_event = arkansas_event[-c(2:9),]
arkansas_event = arkansas_event[-c(3:10),]
arkansas_event = arkansas_event[-c(4:11),]
arkansas_event = arkansas_event[-c(5:12),]
arkansas_event = arkansas_event[-c(6:13),]
arkansas_event = arkansas_event[-c(7:14),]
arkansas_event = arkansas_event[-c(8:15),]
arkansas_event = arkansas_event[-c(9:16),]
arkansas_event = arkansas_event[-c(10:17),]
arkansas_event = arkansas_event[-c(11:18),]
arkansas_event = arkansas_event[-c(12:19),]
arkansas_event = arkansas_event[-c(13:20),]
arkansas_event = arkansas_event[-c(14:21),]

View(arkansas_event)


#sub dataframe the mean of the US share uninsured for all the years (this is already done before, you do not have to do this!!)
#this sub dataframe is the same as temp_df, so you do not have to compute this one
View(temp_df)

total_df = all_states_100 %>% 
  filter(series == "Total")
uninsured_share_df = all_states_100 %>%
  filter(series == "Uninsured.Share")

weighted_avg_states = uninsured_share_df %>%
  inner_join(total_df, by = c("year", "state"), suffix = c("_uninsured", "_total"))%>%
  group_by(year) %>%
  summarise(weighted_avg_uninsured_share = weighted.mean(value_uninsured, value_total))

temp_df = all_states %>%
  filter(series == "Uninsured.Share") %>%
  group_by(year)%>%
  summarise(mean_uninsured = mean(value, na.rm = TRUE))













