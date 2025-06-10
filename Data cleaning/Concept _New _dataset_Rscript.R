library(dplyr)
library(tidyr)
library(readr)
library(stringr)

# 1. Set the path to your files
path <- "C:/Users/yourname/Documents/Data/"  # <--- Change this to your folder

# 2. Define the years you want to import
years <- 2010:2023

# 3. Define the income levels you want to keep
valid_income_levels <- c(
  "Under $25,000",
  "$25,000 to $49,999",
  "$50,000 to $74,999",
  "$75,000 to $99,999",
  "$100,000 and over"
)

# 4. Loop through each year and process the data
all_data <- lapply(years, function(year) {
  
  # Build file path (e.g., "data_2010.csv")
  file <- paste0(path, "data_", year, ".csv")
  
  # Read the CSV file
  df <- read_csv(file)
  
  # First column = income levels
  income_levels <- df[[1]]
  df <- df[, -1]  # Remove first column for now
  
  # Transpose the data (so states/variables become rows)
  df_t <- as.data.frame(t(df), stringsAsFactors = FALSE)
  colnames(df_t) <- income_levels  # Set row names as column names
  
  # Extract state and variable from original column names
  original_names <- colnames(df)
  split_names <- str_split_fixed(original_names, "\\.\\.", 2)
  df_t$State <- split_names[, 1]
  df_t$Variable <- split_names[, 2]
  
  # Reshape to long format
  df_long <- df_t %>%
    pivot_longer(
      cols = -c(State, Variable),
      names_to = "IncomeLevel",
      values_to = "Value"
    ) %>%
    filter(IncomeLevel %in% valid_income_levels) %>%  # Keep only income rows
    pivot_wider(names_from = Variable, values_from = Value) %>%  # Spread variables
    mutate(Year = year) %>%
    relocate(State, Year, IncomeLevel)
  
  return(df_long)
})

# 5. Combine all years into one dataframe
final_data <- bind_rows(all_data)

# 6. Clean numeric columns (remove commas and % signs)
final_data <- final_data %>%
  mutate(
    TotalPopulation = as.numeric(gsub(",", "", `Total.Population`)),
    UninsuredPopulation = as.numeric(gsub(",", "", `Uninsured.Population`)),
    UninsuredShare = as.numeric(gsub("%", "", `Uninsured.Share`))
  ) %>%
  select(State, Year, IncomeLevel, TotalPopulation, UninsuredPopulation, UninsuredShare)

# 7. Save to CSV (optional)
write_csv(final_data, "US_Health_Insurance_by_Income.csv")

# 8. Preview
head(final_data)
