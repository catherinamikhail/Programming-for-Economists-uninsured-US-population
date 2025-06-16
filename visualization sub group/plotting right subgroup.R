

##########################################################

# create a subset data of 2017 and middle income
#subset that will be used is middle_income of 2017
#calculate quartiles
quartiles = quantile(middle_income$value, probs = c(0, 0.25, 0.5, 0.75, 1))

middle_income_1 = middle_income[middle_income$value >= quartiles[1] & middle_income$value <= quartiles[2],]
middle_income_2 = middle_income[middle_income$value > quartiles[2] & middle_income$value <= quartiles [3],]
middle_income_3 = middle_income[middle_income$value > quartiles[3] & middle_income$value <= quartiles [4], ]
middle_income_4 = middle_income[middle_income$value > quartiles[4] & middle_income$value <= quartiles [5],]

#merge subsets into 1 dataframe
merged_subgroup = rbind(middle_income_1, middle_income_2, middle_income_3, middle_income_4)
 #add a column to indicate the quartile
merged_subgroup$quartile = factor(rep(c("Q1", "Q2","Q3", "Q4"), times = c(nrow(middle_income_1), nrow (middle_income_2), nrow(middle_income_3), nrow(middle_income_4))))

#print the quartiles
quartiles = quantile(merged_subgroup$value, probs = c(0.25, 0.5, 0.75))
print(paste("First quartile (Q1):", quartiles[1]))
print(paste("Second quartile (Q2):", quartiles[2]))
print(paste("Third quartile (Q3):", quartiles[3]))

#plot the 4 boxplots in 1 plot

library(ggplot2)

ggplot(merged_subgroup, aes(x = quartile, y = value)) + 
  geom_boxplot()+
  labs(x = "Quartiles in Proportion State Population, making $25k to $49,999", y = "Percentages Point Uninsured", title = "Quartile Analaysis of Uninsured Share among Middle-Income in the US, 2017") + 
  theme_classic()
