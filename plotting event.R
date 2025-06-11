#Here I am plotting the event analysis of Arkansas in 2018

#subsets that will be used
arkansas_event

#Calculating the weighted average of the uninsured shares of the rest of the United States, excluding Arkansas
library(dplyr)

#filter the data to only include Uninsured Share series
uninsured_share = all_states_100 %>%
  filter(series == "Uninsured.Share")

#calculate the weighted average of uninsured shares for the rest of the states
rest_states_event = all_states_100 %>%
  filter(series == "Uninsured.Share" & state != "Arkansas") %>%
  left_join(all_states_100 %>%
              filter(series== "Total") %>%
              select(year, state, total = value), by = c("year", "state"))%>%
  group_by(year)%>%
  summarise(weighted_avg = sum(value * total/sum(total)))




#####################
library(dplyr)
library(tidyr)

rest_states_event = all_states_100 %>%
  filter(state != "Arkansas")%>%
  pivot_wider(id_cols = c(year, state), names_from = series, values_from = value) %>%
  group_by(year)%>%
  summarise(weighted_avg = sum(Uninsured.Share * Total, na.rm = TRUE/sum(Total, na.rm = TRUE)))




###############
#Here I only got the weighted average uninsured share of 2017-2023
totals = all_states_100 %>%
  filter(series == "Total" & state!= "Arkansas") %>%
  select(year, state,total = value)

uninsured_share = all_states_100 %>%
  filter(series == "Uninsured.Share" & state!="Arkansas") %>%
  select(year, state, uninsured_share = value)

weighted_avg_2 = totals %>%
  inner_join(uninsured_share, by = c("year", "state"))%>%
  group_by(year)%>%
  summarise(weighted_avg = sum(uninsured_share * total, na.rm = TRUE)/ sum(total, na.rm = TRUE))

#Here I am trying it again for 2010-2016

wa_2010_2016 <- all_states_100 %>%
  filter(
    year >= 2010, year <= 2016,
    state != "Arkansas",
    measure == "Estimate",
    series %in% c("Total.Civilian.Noninstitutionalized.Population", "Uninsured.Population")
  ) %>%
  mutate(value = as.numeric(gsub(",", "", value))) %>%
  select(year, state, series, value) %>%
  pivot_wider(names_from = series, values_from = value) %>%
  filter(!is.na(Total.Civilian.Noninstitutionalized.Population), !is.na(`Uninsured.Population`)) %>%
  group_by(year) %>%
  summarise(
    weighted_avg = sum(`Uninsured.Population` * Total.Civilian.Noninstitutionalized.Population, na.rm = TRUE) / sum(Total.Civilian.Noninstitutionalized.Population, na.rm = TRUE) * 100
  )


wa_2010_2016 <- all_states_100 %>%
  filter(
    year >= 2010, year <= 2016,
    state != "Arkansas",
    measure == "Estimate",
    series %in% c("Total.Civilian.Noninstitutionalized.Population", "Uninsured.Population")
  ) %>%
  mutate(value = as.numeric(gsub(",", "", value))) %>%
  distinct(year, state, series, .keep_all = TRUE) %>%  # <-- removes duplicates
  select(year, state, series, value) %>%
  pivot_wider(names_from = series, values_from = value) %>%
  filter(!is.na(Total.Civilian.Noninstitutionalized.Population), !is.na(`Uninsured.Population`)) %>%
  group_by(year) %>%
  summarise(
    weighted_avg = sum(`Uninsured.Population` * Total.Civilian.Noninstitutionalized.Population, na.rm = TRUE) / sum(Total.Civilian.Noninstitutionalized.Population, na.rm = TRUE) * 100
  )

#############################

subset_event = all_states_100 %>%
  filter(
    all_states_100$year >=2017 & `Label (Grouping)` == "Total civilian noninstitutionalized population" & series %in% c("Total", "Uninsured.Share")) |
  all_states_100$year >=2010 & all_states_100$year <= 2016 &`Label (Grouping)`=="Total population" & series %in%
  c("Total", "Uninsured.Share") %>%
  filter(state != "Arkansas")
colnames(all_states_100)

write.csv(all_states_100, "allstates.csv")

################################################

library(dplyr)
library(readr)
library(tidyr)

# Load the dataset
df <- read_csv("allstates.csv")

# Filter and transform the data
weighted_avg <- all_states_100 %>%
  filter(
    year >= 2010, year <= 2023, year != 2020,    # Exclude 2020
    state != "Arkansas",
    measure == "Estimate",
    series %in% c("Total", "Total.Uninsured")
  ) %>%
  select(year, state, series, value) %>%
  pivot_wider(names_from = series, values_from = value) %>%
  filter(!is.na(Total), !is.na(Total.Uninsured)) %>%
  group_by(year) %>%
  summarise(weighted_uninsured_share = sum(Total.Uninsured) / sum(Total) * 100)

print(weighted_avg)




###########################################################################

library(dplyr)
library(tidyr)

# Filter and reshape the data
reshaped <- all_states_100 %>%
  filter(
    year >= 2010, year <= 2023, year != 2020,
    state != "Arkansas",
    series %in% c("Total", "Total.Uninsured", "Uninsured.Share"),
    measure == "Estimate"
  ) %>%
  select(year, state, series, value) %>%
  pivot_wider(names_from = series, values_from = value)

# Calculate weighted average:
# - for 2010–2016: compute share from Total.Uninsured / Total
# - for 2017–2023: use Uninsured.Share directly
weighted_avg <- reshaped %>%
  mutate(
    year = as.integer(year),
    uninsured_share_calc = case_when(
      year <= 2016 ~ (Total.Uninsured / Total) * 100,
      year >= 2017 ~ Uninsured.Share
    )
  ) %>%
  filter(!is.na(uninsured_share_calc), !is.na(Total)) %>%
  group_by(year) %>%
  summarise(weighted_avg = sum(uninsured_share_calc * Total, na.rm = TRUE) / sum(Total, na.rm = TRUE))

print(weighted_avg)
 ##########################################################################








library(dplyr)
library(tidyr)
library(readr)

# Ensure value column is numeric — remove commas and convert to number
all_states_clean <- all_states_100 %>%
  mutate(
    value = gsub(",", "", value),                 # remove commas
    value = as.numeric(value)                     # convert to numeric
  )

# Filter and reshape
reshaped <- all_states_clean %>%
  filter(
    year >= 2010, year <= 2023, year != 2020,
    state != "Arkansas",
    series %in% c("Total", "Total.Uninsured", "Uninsured.Share"),
    measure == "Estimate"
  ) %>%
  select(year, state, series, value) %>%
  pivot_wider(names_from = series, values_from = value)

# Calculate weighted average uninsured share
weighted_avg <- reshaped %>%
  mutate(
    year = as.integer(year),
    uninsured_share_calc = case_when(
      year <= 2016 ~ (Total.Uninsured / Total) * 100,
      year >= 2017 ~ Uninsured.Share
    )
  ) %>%
  filter(!is.na(uninsured_share_calc), !is.na(Total)) %>%
  group_by(year) %>%
  summarise(
    weighted_avg = sum(uninsured_share_calc * Total, na.rm = TRUE) / sum(Total, na.rm = TRUE)
  )

print(weighted_avg)

###########################################

library(dplyr)
library(tidyr)
library(readr)

# Step 1: Clean the value column in original data
all_states_clean <- all_states_100 %>%
  mutate(
    value = gsub(",", "", value),       # remove commas
    value = as.numeric(value)           # convert to numeric
  )

# Step 2: Filter and reshape
reshaped <- all_states_clean %>%
  filter(
    year >= 2010, year <= 2023, year != 2020,
    state != "Arkansas",
    series %in% c("Total", "Total.Uninsured", "Uninsured.Share"),
    measure == "Estimate"
  ) %>%
  select(year, state, series, value) %>%
  pivot_wider(names_from = series, values_from = value)

# Step 3: Convert reshaped columns to numeric (they may have been read as characters)
reshaped <- reshaped %>%
  mutate(
    Total = as.numeric(Total),
    `Total.Uninsured` = as.numeric(`Total.Uninsured`),
    `Uninsured.Share` = as.numeric(`Uninsured.Share`)
  )

# Step 4: Calculate weighted average uninsured share
weighted_avg <- reshaped %>%
  mutate(
    year = as.integer(year),
    uninsured_share_calc = case_when(
      year <= 2016 ~ (`Total.Uninsured` / Total) * 100,
      year >= 2017 ~ `Uninsured.Share`
    )
  ) %>%
  filter(!is.na(uninsured_share_calc), !is.na(Total)) %>%
  group_by(year) %>%
  summarise(
    weighted_avg = sum(uninsured_share_calc * Total, na.rm = TRUE) / sum(Total, na.rm = TRUE)
  )

print(weighted_avg)

#plotting the event
library(ggplot2)

