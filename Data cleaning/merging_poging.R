library(dplyr)
library(stringr)
library(purrr)
library(tidyverse)

# Define years
years_early <- 2010:2016
years_late <- c(2017:2019, 2021:2023)

# Function to process one year of data
process_df <- function(df, year, is_early) {
  label_col <- names(df)[1]
  state_cols <- names(df)[!names(df) %in% c(label_col, "Unnamed: 0")]
  states <- unique(str_extract(state_cols, "^[^.]+"))
  
  # Set correct suffixes depending on year
  if (is_early) {
    pop_suffix <- "..Total.Civilian.Noninstitutionalized.Population..Estimate"
    unins_suffix <- "..Uninsured.Population..Estimate"
    share_suffix <- "..Uninsured.Share"
  } else {
    pop_suffix <- "..Total..Estimate"
    unins_suffix <- "..Total.Uninsured..Estimate"
    share_suffix <- "..Uninsured.Share"
  }
  
  # Extract for each state
  rows <- lapply(states, function(state) {
    pop_col <- paste0(state, pop_suffix)
    unins_col <- paste0(state, unins_suffix)
    share_col <- paste0(state, share_suffix)
    
    # Get only total population row
    total_row <- df %>%
      filter(str_trim(.data[[label_col]]) == "Total population")
    
    if (nrow(total_row) == 0 || !(pop_col %in% names(df))) return(NULL)
    
    tibble(
      state = state,
      year = year,
      total_population = as.numeric(total_row[[pop_col]]),
      total_uninsured = as.numeric(total_row[[unins_col]]),
      uninsured_share = as.numeric(total_row[[share_col]])
    )
  })
  
  bind_rows(rows)
}

# Process all early years
dfs_early <- mget(paste0("df_pop_", years_early))
panel_early <- map2_dfr(dfs_early, years_early, ~process_df(.x, .y, is_early = TRUE))

# Process all late years
dfs_late <- mget(paste0("df_pop_", years_late))
#panel_late <- map2_dfr(dfs_late, years_late, ~process_df(.x, .y, is_early = FALSE))

early_states <- bind_rows(
  dfs_early, .id = "year") %>%
  pivot_longer(
    -c(year, "Label (Grouping)"),
    names_to = "tmp",
    values_to = "value") %>%
  separate(tmp,
           into = c("state", "series", "measure"),
           sep = "\\.\\.",
           remove = TRUE)

late_states <- bind_rows(
  dfs_late, .id = "year") %>%
  pivot_longer(
    -c(year, "Label (Grouping)"),
    names_to = "tmp",
    values_to = "value") %>%
  separate(tmp,
           into = c("state", "series", "measure"),
           sep = "\\.\\.",
           remove = TRUE)
# View

all_states <- rbind(late_states, early_states)

head(all_states)

# Optional: save
write.csv(all_states, "Data cleaning/all_states_merged.csv", row.names = FALSE)


