#cleaning out df_pop from the column of years to only remain the year numnbers


unique(all_states$year)

library(stringr)

all_states$year <- str_remove(all_states$year, "df_pop_")

#Now I am coercing the string into numeric so plotting becomes easier

all_states$year <- as.numeric(all_states$year)
str(all_states)
