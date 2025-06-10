#Here I am multiplying the uninsured share by 100, such that they are representing percentages
library(dplyr)
all_states_100 = all_states %>%
  mutate(value = 
           ifelse(grepl("Uninsured.Share",
                        series), value*100, value))