#Here I am trying to compute and create a new variable, which is the share of uninsured population per state and per year

# Copy original data 2010
df_pop_2010 <- dataset_uninsured_population_2010_cleaned
col_names <- colnames(df_pop_2010)
new_col_order <- col_names  # to control column ordering

# Loop through all columns ending in "..Uninsured.Population..Estimate"
uninsured_cols <- grep("\\.\\.Uninsured\\.Population\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract the state name — everything before the first ".."
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Define the total population column and the share column
  total_col <- paste0(state, "..Total.Civilian.Noninstitutionalized.Population..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  if (total_col %in% col_names) {
    # Initialize new share column with NA
    df_pop_2010[[share_col]] <- NA
    
    # Calculate only for first row
    if (!is.na(df_pop_2010[[total_col]][1]) && df_pop_2010[[total_col]][1] != 0) {
      df_pop_2010[[share_col]][1] <- df_pop_2010[[uninsured_col]][1] / df_pop_2010[[total_col]][1]
    } else {
      df_pop_2010[[share_col]][1] <- NA
    }
    
    # Insert new column right after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
    
  } else {
    cat("⚠️ Total population column not found for:", state, "\n")
  }
}

# Reorder the columns
df_pop_2010 <- df_pop_2010[, new_col_order]

# Preview: Show share columns for the first row
share_cols <- grep("\\.\\.Uninsured.Share$", colnames(df_pop_2010), value = TRUE)
cat("\n✅ Created share columns:\n")
print(share_cols)
print(df_pop_2010[1, share_cols])

View(df_pop_2010)

#################################################################################

# Copy original data 2011
df_pop_2011 <- dataset_uninsured_population_2011_cleaned
col_names <- colnames(df_pop_2011)
new_col_order <- col_names  # to control column ordering

# Loop through all columns ending in "..Uninsured.Population..Estimate"
uninsured_cols <- grep("\\.\\.Uninsured\\.Population\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract the state name — everything before the first ".."
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Define the total population column and the share column
  total_col <- paste0(state, "..Total.Civilian.Noninstitutionalized.Population..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  if (total_col %in% col_names) {
    # Initialize new share column with NA
    df_pop_2011[[share_col]] <- NA
    
    # Calculate only for first row
    if (!is.na(df_pop_2011[[total_col]][1]) && df_pop_2011[[total_col]][1] != 0) {
      df_pop_2011[[share_col]][1] <- df_pop_2011[[uninsured_col]][1] / df_pop_2011[[total_col]][1]
    } else {
      df_pop_2011[[share_col]][1] <- NA
    }
    
    # Insert new column right after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
    
  } else {
    cat("⚠️ Total population column not found for:", state, "\n")
  }
}

# Reorder the columns
df_pop_2011 <- df_pop_2011[, new_col_order]

# Preview: Show share columns for the first row
share_cols <- grep("\\.\\.Uninsured.Share$", colnames(df_pop_2011), value = TRUE)
cat("\n✅ Created share columns:\n")
print(share_cols)
print(df_pop_2011[1, share_cols])

View(df_pop_2011)


###############################################################################


# Copy original data 2012
df_pop_2012 <- dataset_uninsured_population_2012_cleaned
col_names <- colnames(df_pop_2012)
new_col_order <- col_names  # to control column ordering

# Loop through all columns ending in "..Uninsured.Population..Estimate"
uninsured_cols <- grep("\\.\\.Uninsured\\.Population\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract the state name — everything before the first ".."
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Define the total population column and the share column
  total_col <- paste0(state, "..Total.Civilian.Noninstitutionalized.Population..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  if (total_col %in% col_names) {
    # Initialize new share column with NA
    df_pop_2012[[share_col]] <- NA
    
    # Calculate only for first row
    if (!is.na(df_pop_2012[[total_col]][1]) && df_pop_2012[[total_col]][1] != 0) {
      df_pop_2012[[share_col]][1] <- df_pop_2012[[uninsured_col]][1] / df_pop_2012[[total_col]][1]
    } else {
      df_pop_2012[[share_col]][1] <- NA
    }
    
    # Insert new column right after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
    
  } else {
    cat("⚠️ Total population column not found for:", state, "\n")
  }
}

# Reorder the columns
df_pop_2012 <- df_pop_2012[, new_col_order]

# Preview: Show share columns for the first row
share_cols <- grep("\\.\\.Uninsured.Share$", colnames(df_pop_2012), value = TRUE)
cat("\n✅ Created share columns:\n")
print(share_cols)
print(df_pop_2012[1, share_cols])


###############################################################################


# Copy original data 2013
df_pop_2013 <- dataset_uninsured_population_2013_cleaned
col_names <- colnames(df_pop_2013)
new_col_order <- col_names  # to control column ordering

# Loop through all columns ending in "..Uninsured.Population..Estimate"
uninsured_cols <- grep("\\.\\.Uninsured\\.Population\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract the state name — everything before the first ".."
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Define the total population column and the share column
  total_col <- paste0(state, "..Total.Civilian.Noninstitutionalized.Population..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  if (total_col %in% col_names) {
    # Initialize new share column with NA
    df_pop_2013[[share_col]] <- NA
    
    # Calculate only for first row
    if (!is.na(df_pop_2013[[total_col]][1]) && df_pop_2013[[total_col]][1] != 0) {
      df_pop_2013[[share_col]][1] <- df_pop_2013[[uninsured_col]][1] / df_pop_2013[[total_col]][1]
    } else {
      df_pop_2013[[share_col]][1] <- NA
    }
    
    # Insert new column right after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
    
  } else {
    cat("⚠️ Total population column not found for:", state, "\n")
  }
}

# Reorder the columns
df_pop_2013 <- df_pop_2013[, new_col_order]

# Preview: Show share columns for the first row
share_cols <- grep("\\.\\.Uninsured.Share$", colnames(df_pop_2013), value = TRUE)
cat("\n✅ Created share columns:\n")
print(share_cols)
print(df_pop_2013[1, share_cols])


################################################################################


# Copy original data 2014
df_pop_2014 <- dataset_uninsured_population_2014_cleaned
col_names <- colnames(df_pop_2014)
new_col_order <- col_names  # to control column ordering

# Loop through all columns ending in "..Uninsured.Population..Estimate"
uninsured_cols <- grep("\\.\\.Uninsured\\.Population\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract the state name — everything before the first ".."
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Define the total population column and the share column
  total_col <- paste0(state, "..Total.Civilian.Noninstitutionalized.Population..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  if (total_col %in% col_names) {
    # Initialize new share column with NA
    df_pop_2014[[share_col]] <- NA
    
    # Calculate only for first row
    if (!is.na(df_pop_2014[[total_col]][1]) && df_pop_2014[[total_col]][1] != 0) {
      df_pop_2014[[share_col]][1] <- df_pop_2014[[uninsured_col]][1] / df_pop_2014[[total_col]][1]
    } else {
      df_pop_2014[[share_col]][1] <- NA
    }
    
    # Insert new column right after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
    
  } else {
    cat("⚠️ Total population column not found for:", state, "\n")
  }
}

# Reorder the columns
df_pop_2014 <- df_pop_2014[, new_col_order]

# Preview: Show share columns for the first row
share_cols <- grep("\\.\\.Uninsured.Share$", colnames(df_pop_2014), value = TRUE)
cat("\n✅ Created share columns:\n")
print(share_cols)
print(df_pop_2014[1, share_cols])


################################################################################


# Copy original data 2015
df_pop_2015 <- dataset_uninsured_population_2015_cleaned
col_names <- colnames(df_pop_2015)
new_col_order <- col_names  # to control column ordering

# Loop through all columns ending in "..Uninsured.Population..Estimate"
uninsured_cols <- grep("\\.\\.Uninsured\\.Population\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract the state name — everything before the first ".."
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Define the total population column and the share column
  total_col <- paste0(state, "..Total.Civilian.Noninstitutionalized.Population..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  if (total_col %in% col_names) {
    # Initialize new share column with NA
    df_pop_2015[[share_col]] <- NA
    
    # Calculate only for first row
    if (!is.na(df_pop_2015[[total_col]][1]) && df_pop_2015[[total_col]][1] != 0) {
      df_pop_2015[[share_col]][1] <- df_pop_2015[[uninsured_col]][1] / df_pop_2015[[total_col]][1]
    } else {
      df_pop_2015[[share_col]][1] <- NA
    }
    
    # Insert new column right after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
    
  } else {
    cat("⚠️ Total population column not found for:", state, "\n")
  }
}

# Reorder the columns
df_pop_2015 <- df_pop_2015[, new_col_order]

# Preview: Show share columns for the first row
share_cols <- grep("\\.\\.Uninsured.Share$", colnames(df_pop_2015), value = TRUE)
cat("\n✅ Created share columns:\n")
print(share_cols)
print(df_pop_2015[1, share_cols])


###############################################################################


# Copy original data 2016
df_pop_2016 <- dataset_uninsured_population_2016_cleaned
col_names <- colnames(df_pop_2016)
new_col_order <- col_names  # to control column ordering

# Loop through all columns ending in "..Uninsured.Population..Estimate"
uninsured_cols <- grep("\\.\\.Uninsured\\.Population\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract the state name — everything before the first ".."
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Define the total population column and the share column
  total_col <- paste0(state, "..Total.Civilian.Noninstitutionalized.Population..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  if (total_col %in% col_names) {
    # Initialize new share column with NA
    df_pop_2016[[share_col]] <- NA
    
    # Calculate only for first row
    if (!is.na(df_pop_2016[[total_col]][1]) && df_pop_2016[[total_col]][1] != 0) {
      df_pop_2016[[share_col]][1] <- df_pop_2016[[uninsured_col]][1] / df_pop_2016[[total_col]][1]
    } else {
      df_pop_2016[[share_col]][1] <- NA
    }
    
    # Insert new column right after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
    
  } else {
    cat("⚠️ Total population column not found for:", state, "\n")
  }
}

# Reorder the columns
df_pop_2016 <- df_pop_2016[, new_col_order]

# Preview: Show share columns for the first row
share_cols <- grep("\\.\\.Uninsured.Share$", colnames(df_pop_2016), value = TRUE)
cat("\n✅ Created share columns:\n")
print(share_cols)
print(df_pop_2016[1, share_cols])

################################################################################

#something went wrong here with 2017 and 2018, so the function that worked is much more below as the column names in the years of 2017-2018 were named differently than the years before

# Copy original data 2017
df_pop_2017 <- dataset_uninsured_population_2017_cleaned
col_names <- colnames(df_pop_2017)
new_col_order <- col_names  # to control column ordering

# Loop through all columns ending in "..Uninsured.Population..Estimate"
uninsured_cols <- grep("\\.\\.Uninsured\\.Population\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract the state name — everything before the first ".."
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Define the total population column and the share column
  total_col <- paste0(state, "..Total.Civilian.Noninstitutionalized.Population..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  if (total_col %in% col_names) {
    # Initialize new share column with NA
    df_pop_2017[[share_col]] <- NA
    
    # Calculate only for first row
    if (!is.na(df_pop_2017[[total_col]][1]) && df_pop_2017[[total_col]][1] != 0) {
      df_pop_2017[[share_col]][1] <- df_pop_2017[[uninsured_col]][1] / df_pop_2017[[total_col]][1]
    } else {
      df_pop_2017[[share_col]][1] <- NA
    }
    
    # Insert new column right after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
    
  } else {
    cat("⚠️ Total population column not found for:", state, "\n")
  }
}

# Reorder the columns
df_pop_2017 <- df_pop_2017[, new_col_order]

# Preview: Show share columns for the first row
share_cols <- grep("\\.\\.Uninsured.Share$", colnames(df_pop_2017), value = TRUE)
cat("\n✅ Created share columns:\n")
print(share_cols)
print(df_pop_2017[1, share_cols])

# Copy original data 2018
df_pop_2018<- dataset_uninsured_population_2018_cleaned
col_names <- colnames(df_pop_2018)
new_col_order <- col_names  # to control column ordering

# Loop through all columns ending in "..Uninsured.Population..Estimate"
uninsured_cols <- grep("\\.\\.Uninsured\\.Population\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract the state name — everything before the first ".."
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Define the total population column and the share column
  total_col <- paste0(state, "..Total.Civilian.Noninstitutionalized.Population..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  if (total_col %in% col_names) {
    # Initialize new share column with NA
    df_pop_2018[[share_col]] <- NA
    
    # Calculate only for first row
    if (!is.na(df_pop_2018[[total_col]][1]) && df_pop_2018[[total_col]][1] != 0) {
      df_pop_2018[[share_col]][1] <- df_pop_2018[[uninsured_col]][1] / df_pop_2018[[total_col]][1]
    } else {
      df_pop_2018[[share_col]][1] <- NA
    }
    
    # Insert new column right after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
    
  } else {
    cat("⚠️ Total population column not found for:", state, "\n")
  }
}

# Reorder the columns
df_pop_2018 <- df_pop_2018[, new_col_order]

# Preview: Show share columns for the first row
share_cols <- grep("\\.\\.Uninsured.Share$", colnames(df_pop_2018), value = TRUE)
cat("\n✅ Created share columns:\n")
print(share_cols)
print(df_pop_2018[1, share_cols])

View(df_pop_2017)
View(df_pop_2016)
View(df_pop_2018)

#I have seen that it did not work for the years of 2017 and 2018 so I have to see what the names of the columns are
grep("Alabama", colnames(dataset_uninsured_population_2017_cleaned), value = TRUE)
grep("Alabama", colnames(dataset_uninsured_population_2018_cleaned), value = TRUE)

#Here I am starting again from 2017

# Make a working copy of your data 2017
df_pop_2017 <- dataset_uninsured_population_2017_cleaned
col_names <- colnames(df_pop_2017)
new_col_order <- col_names

# Loop through all columns ending with "..Total.Uninsured..Estimate"
uninsured_cols <- grep("\\.\\.Total\\.Uninsured\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract state (everything before first "..")
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Construct matching total population column and new share column
  total_col <- paste0(state, "..Total..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  # Check if the total population column exists
  if (total_col %in% col_names) {
    # Create new share column, default NA
    df_pop_2017[[share_col]] <- NA
    
    # Calculate share only for first row
    total_val <- df_pop_2017[[total_col]][1]
    uninsured_val <- df_pop_2017[[uninsured_col]][1]
    
    if (!is.na(total_val) && total_val != 0) {
      df_pop_2017[[share_col]][1] <- uninsured_val / total_val
    }
    
    # Insert share column after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
  } else {
    cat("⚠️ Total column not found for", state, "\n")
  }
}

# Reorder columns
df_pop_2017 <- df_pop_2017[, new_col_order]

# Show all created share columns
share_cols <- grep("\\.\\.Uninsured\\.Share$", names(df_pop_2017), value = TRUE)
cat("\n✅ Created columns:\n")
print(share_cols)
print(df_pop_2017[1, share_cols])

#now it worked and I can work further on 2018-2023 except for 2020 as we do not have the data of that

# Make a working copy of your data 2018
df_pop_2018 <- dataset_uninsured_population_2018_cleaned
col_names <- colnames(df_pop_2018)
new_col_order <- col_names

# Loop through all columns ending with "..Total.Uninsured..Estimate"
uninsured_cols <- grep("\\.\\.Total\\.Uninsured\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract state (everything before first "..")
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Construct matching total population column and new share column
  total_col <- paste0(state, "..Total..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  # Check if the total population column exists
  if (total_col %in% col_names) {
    # Create new share column, default NA
    df_pop_2018[[share_col]] <- NA
    
    # Calculate share only for first row
    total_val <- df_pop_2018[[total_col]][1]
    uninsured_val <- df_pop_2018[[uninsured_col]][1]
    
    if (!is.na(total_val) && total_val != 0) {
      df_pop_2018[[share_col]][1] <- uninsured_val / total_val
    }
    
    # Insert share column after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
  } else {
    cat("⚠️ Total column not found for", state, "\n")
  }
}

# Reorder columns
df_pop_2018 <- df_pop_2018[, new_col_order]

# Show all created share columns
share_cols <- grep("\\.\\.Uninsured\\.Share$", names(df_pop_2018), value = TRUE)
cat("\n✅ Created columns:\n")
print(share_cols)
print(df_pop_2018[1, share_cols])


################################################################################


# Make a working copy of your data 2019
df_pop_2019 <- dataset_uninsured_population_2019_cleaned
col_names <- colnames(df_pop_2019)
new_col_order <- col_names

# Loop through all columns ending with "..Total.Uninsured..Estimate"
uninsured_cols <- grep("\\.\\.Total\\.Uninsured\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract state (everything before first "..")
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Construct matching total population column and new share column
  total_col <- paste0(state, "..Total..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  # Check if the total population column exists
  if (total_col %in% col_names) {
    # Create new share column, default NA
    df_pop_2019[[share_col]] <- NA
    
    # Calculate share only for first row
    total_val <- df_pop_2019[[total_col]][1]
    uninsured_val <- df_pop_2019[[uninsured_col]][1]
    
    if (!is.na(total_val) && total_val != 0) {
      df_pop_2019[[share_col]][1] <- uninsured_val / total_val
    }
    
    # Insert share column after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
  } else {
    cat("⚠️ Total column not found for", state, "\n")
  }
}

# Reorder columns
df_pop_2019 <- df_pop_2019[, new_col_order]

# Show all created share columns
share_cols <- grep("\\.\\.Uninsured\\.Share$", names(df_pop_2019), value = TRUE)
cat("\n✅ Created columns:\n")
print(share_cols)
print(df_pop_2019[1, share_cols])


################################################################################


# Make a working copy of your data 2021
df_pop_2021 <- dataset_uninsured_population_2021_cleaned
col_names <- colnames(df_pop_2021)
new_col_order <- col_names

# Loop through all columns ending with "..Total.Uninsured..Estimate"
uninsured_cols <- grep("\\.\\.Total\\.Uninsured\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract state (everything before first "..")
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Construct matching total population column and new share column
  total_col <- paste0(state, "..Total..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  # Check if the total population column exists
  if (total_col %in% col_names) {
    # Create new share column, default NA
    df_pop_2021[[share_col]] <- NA
    
    # Calculate share only for first row
    total_val <- df_pop_2021[[total_col]][1]
    uninsured_val <- df_pop_2021[[uninsured_col]][1]
    
    if (!is.na(total_val) && total_val != 0) {
      df_pop_2021[[share_col]][1] <- uninsured_val / total_val
    }
    
    # Insert share column after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
  } else {
    cat("⚠️ Total column not found for", state, "\n")
  }
}

# Reorder columns
df_pop_2021 <- df_pop_2021[, new_col_order]

# Show all created share columns
share_cols <- grep("\\.\\.Uninsured\\.Share$", names(df_pop_2021), value = TRUE)
cat("\n✅ Created columns:\n")
print(share_cols)
print(df_pop_2021[1, share_cols])

###############################################################################


# Make a working copy of your data 2022
df_pop_2022 <- dataset_uninsured_population_2022_cleaned
col_names <- colnames(df_pop_2022)
new_col_order <- col_names

# Loop through all columns ending with "..Total.Uninsured..Estimate"
uninsured_cols <- grep("\\.\\.Total\\.Uninsured\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract state (everything before first "..")
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Construct matching total population column and new share column
  total_col <- paste0(state, "..Total..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  # Check if the total population column exists
  if (total_col %in% col_names) {
    # Create new share column, default NA
    df_pop_2022[[share_col]] <- NA
    
    # Calculate share only for first row
    total_val <- df_pop_2022[[total_col]][1]
    uninsured_val <- df_pop_2022[[uninsured_col]][1]
    
    if (!is.na(total_val) && total_val != 0) {
      df_pop_2022[[share_col]][1] <- uninsured_val / total_val
    }
    
    # Insert share column after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
  } else {
    cat("⚠️ Total column not found for", state, "\n")
  }
}

# Reorder columns
df_pop_2022 <- df_pop_2022[, new_col_order]

# Show all created share columns
share_cols <- grep("\\.\\.Uninsured\\.Share$", names(df_pop_2022), value = TRUE)
cat("\n✅ Created columns:\n")
print(share_cols)
print(df_pop_2022[1, share_cols])


################################################################################

# Make a working copy of your data 2023
df_pop_2023 <- dataset_uninsured_population_2023_cleaned
col_names <- colnames(df_pop_2023)
new_col_order <- col_names

# Loop through all columns ending with "..Total.Uninsured..Estimate"
uninsured_cols <- grep("\\.\\.Total\\.Uninsured\\.\\.Estimate$", col_names, value = TRUE)

for (uninsured_col in uninsured_cols) {
  # Extract state (everything before first "..")
  state <- strsplit(uninsured_col, "\\.\\.")[[1]][1]
  
  # Construct matching total population column and new share column
  total_col <- paste0(state, "..Total..Estimate")
  share_col <- paste0(state, "..Uninsured.Share")
  
  cat("Processing:", state, "\n")
  
  # Check if the total population column exists
  if (total_col %in% col_names) {
    # Create new share column, default NA
    df_pop_2023[[share_col]] <- NA
    
    # Calculate share only for first row
    total_val <- df_pop_2023[[total_col]][1]
    uninsured_val <- df_pop_2023[[uninsured_col]][1]
    
    if (!is.na(total_val) && total_val != 0) {
      df_pop_2023[[share_col]][1] <- uninsured_val / total_val
    }
    
    # Insert share column after the uninsured column
    pos <- match(uninsured_col, new_col_order)
    new_col_order <- append(new_col_order, share_col, after = pos)
  } else {
    cat("⚠️ Total column not found for", state, "\n")
  }
}

# Reorder columns
df_pop_2023 <- df_pop_2023[, new_col_order]

# Show all created share columns
share_cols <- grep("\\.\\.Uninsured\\.Share$", names(df_pop_2023), value = TRUE)
cat("\n✅ Created columns:\n")
print(share_cols)
print(df_pop_2023[1, share_cols])

#checking every year
View(df_pop_2010)
View(df_pop_2011)
View(df_pop_2012)
View(df_pop_2013)
View(df_pop_2014)
View(df_pop_2015)
View(df_pop_2016)
View(df_pop_2017)
View(df_pop_2018)
View(df_pop_2019)
View(df_pop_2021)
View(df_pop_2022)
View(df_pop_2023)


