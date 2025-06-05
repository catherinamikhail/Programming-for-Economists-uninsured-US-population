# This is me cleaning out the data insured population from 2010-2016 getting out the margin of errors

dataset_uninsured_population_2010 = dataset_uninsured_population_2010[, which(!grepl("Margin of Error", colnames(dataset_uninsured_population_2010)))]
View(dataset_uninsured_population_2010)

dataset_uninsured_population_2011 = dataset_uninsured_population_2011[, which(!grepl("Margin of Error", colnames(dataset_uninsured_population_2011)))]
View(dataset_uninsured_population_2011)

dataset_uninsured_population_2012 = dataset_uninsured_population_2012[, which(!grepl("Margin of Error", colnames(dataset_uninsured_population_2012)))]
View(dataset_uninsured_population_2012)

dataset_uninsured_population_2013 = dataset_uninsured_population_2013[, which(!grepl("Margin of Error", colnames(dataset_uninsured_population_2013)))]
View(dataset_uninsured_population_2013)

dataset_uninsured_population_2014 = dataset_uninsured_population_2014[, which(!grepl("Margin of Error", colnames(dataset_uninsured_population_2014)))]
View(dataset_uninsured_population_2014)

dataset_uninsured_population_2015 = dataset_uninsured_population_2015[, which(!grepl("Margin of Error", colnames(dataset_uninsured_population_2015)))]
View(dataset_uninsured_population_2015)

dataset_uninsured_population_2016 = dataset_uninsured_population_2016[, which(!grepl("Margin of Error", colnames(dataset_uninsured_population_2016)))]
View(dataset_uninsured_population_2016)
