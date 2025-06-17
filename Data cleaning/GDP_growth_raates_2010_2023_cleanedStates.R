GDP_growth_rates_2010_2023_Table_3_ <- GDP_growth_rates_2010_2023_Table_3_[-c(9, 10, 13, 36, 41, 47, 52),]

##############################################################################
#Here I am cleaning out the years: 1997-2008 and 2020 and 2024

library(dplyr)

annual_gdp_Table_4_ %>%
  select(-c(1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2020,2024))

table_GDP = annual_gdp_Table_4_[, !(names(annual_gdp_Table_4_) %in% c("1997", "1998","1999","2000", "2001","2002","2003","2004","2005","2006","2007","2008","2020","2024"))]

table_GDP = table_GDP[-c(9,10,13,36,41,47,52,54,55,56,57,58,59,60),]
table_GDP = table_GDP[-c(1),]
table_GDP = table_GDP[-c(45),]


