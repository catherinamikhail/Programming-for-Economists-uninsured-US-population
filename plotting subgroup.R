#plotting subgroup 2017, 1 year after Trump became president in 2016 comparing middle income group with the highest when it comes to uninsured share
#subsets that will be used are middle_income and high_income
#taking out the unnecessary rows 
high_income = high_income[high_income$series == "Total.Uninsured",]
middle_income = middle_income[middle_income$series == "Total.Uninsured",]

#making plot data frame

plot_subgroup = rbind(data.frame(income_group = "$100,000 and over", value = high_income$value), data.frame(income_group = "$25,000 to $49,999", value = middle_income$value))

#plot the boxplot

library(ggplot2)

ggplot(plot_subgroup, aes(x = income_group, y = value)) + 
  geom_boxplot() + labs(x = "Income Group", y = "share of the Uninsured") + 
  theme_classic()
