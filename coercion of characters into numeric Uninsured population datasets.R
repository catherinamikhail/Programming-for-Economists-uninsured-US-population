#The values in the datasets of the uninsured population are stored as characters. Here I am going to get rid of "" so I can store them as numeric.

# Keep the first column as-is
first_col <- dataset_uninsured_population_2010[[1]]

# Clean and convert the rest of the columns
# Keep the first column as-is
first_col <- dataset_uninsured_population_2010[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2010_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2010[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2010_cleaned <- cbind(first_col, dataset_uninsured_population_2010_numeric)

#rename the first column
colnames(dataset_uninsured_population_2010_cleaned)[1] <- colnames(dataset_uninsured_population_2010)[1]

View(dataset_uninsured_population_2010_cleaned)
class(dataset_uninsured_population_2010_cleaned)
class(dataset_uninsured_population_2010_cleaned[[2]])




# Keep the first column as-is
first_col <- dataset_uninsured_population_2011[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2011_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2011[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2011_cleaned <- cbind(first_col, dataset_uninsured_population_2011_numeric)

#rename the first column
colnames(dataset_uninsured_population_2011_cleaned)[1] <- colnames(dataset_uninsured_population_2011)[1]

View(dataset_uninsured_population_2011_cleaned)
class(dataset_uninsured_population_2011_cleaned)
class(dataset_uninsured_population_2011_cleaned[[2]])


# Keep the first column as-is
first_col <- dataset_uninsured_population_2012[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2012_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2012[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2012_cleaned <- cbind(first_col, dataset_uninsured_population_2012_numeric)

#rename the first column
colnames(dataset_uninsured_population_2012_cleaned)[1] <- colnames(dataset_uninsured_population_2012)[1]

View(dataset_uninsured_population_2012_cleaned)
class(dataset_uninsured_population_2012_cleaned)
class(dataset_uninsured_population_2012_cleaned[[2]])

# Keep the first column as-is
first_col <- dataset_uninsured_population_2013[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2013_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2013[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2013_cleaned <- cbind(first_col, dataset_uninsured_population_2013_numeric)

#rename the first column
colnames(dataset_uninsured_population_2013_cleaned)[1] <- colnames(dataset_uninsured_population_2013)[1]

View(dataset_uninsured_population_2013_cleaned)
class(dataset_uninsured_population_2013_cleaned)
class(dataset_uninsured_population_2013_cleaned[[2]])

# Keep the first column as-is
first_col <- dataset_uninsured_population_2014[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2014_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2014[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2014_cleaned <- cbind(first_col, dataset_uninsured_population_2014_numeric)

#rename the first column
colnames(dataset_uninsured_population_2014_cleaned)[1] <- colnames(dataset_uninsured_population_2014)[1]

View(dataset_uninsured_population_2014_cleaned)
class(dataset_uninsured_population_2014_cleaned)
class(dataset_uninsured_population_2014_cleaned[[2]])


# Keep the first column as-is
first_col <- dataset_uninsured_population_2015[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2015_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2015[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2015_cleaned <- cbind(first_col, dataset_uninsured_population_2015_numeric)

#rename the first column
colnames(dataset_uninsured_population_2015_cleaned)[1] <- colnames(dataset_uninsured_population_2015)[1]

View(dataset_uninsured_population_2015_cleaned)
class(dataset_uninsured_population_2015_cleaned)
class(dataset_uninsured_population_2015_cleaned[[2]])

# Keep the first column as-is
first_col <- dataset_uninsured_population_2016[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2016_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2016[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2016_cleaned <- cbind(first_col, dataset_uninsured_population_2016_numeric)

#rename the first column
colnames(dataset_uninsured_population_2016_cleaned)[1] <- colnames(dataset_uninsured_population_2016)[1]

View(dataset_uninsured_population_2016_cleaned)
class(dataset_uninsured_population_2016_cleaned)
class(dataset_uninsured_population_2016_cleaned[[2]])


# Keep the first column as-is
first_col <- dataset_uninsured_population_2017[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2017_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2017[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2017_cleaned <- cbind(first_col, dataset_uninsured_population_2017_numeric)

#rename the first column
colnames(dataset_uninsured_population_2017_cleaned)[1] <- colnames(dataset_uninsured_population_2017)[1]

View(dataset_uninsured_population_2017_cleaned)
class(dataset_uninsured_population_2017_cleaned)
class(dataset_uninsured_population_2017_cleaned[[2]])


# Keep the first column as-is
first_col <- dataset_uninsured_population_2018[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2018_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2018[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2018_cleaned <- cbind(first_col, dataset_uninsured_population_2018_numeric)

#rename the first column
colnames(dataset_uninsured_population_2018_cleaned)[1] <- colnames(dataset_uninsured_population_2018)[1]

View(dataset_uninsured_population_2018_cleaned)
class(dataset_uninsured_population_2018_cleaned)
class(dataset_uninsured_population_2018_cleaned[[2]])


# Keep the first column as-is
first_col <- dataset_uninsured_population_2019[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2019_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2019[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2019_cleaned <- cbind(first_col, dataset_uninsured_population_2019_numeric)

#rename the first column
colnames(dataset_uninsured_population_2019_cleaned)[1] <- colnames(dataset_uninsured_population_2019)[1]

View(dataset_uninsured_population_2019_cleaned)
class(dataset_uninsured_population_2019_cleaned)
class(dataset_uninsured_population_2019_cleaned[[2]])

# Keep the first column as-is
first_col <- dataset_uninsured_population_2021[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2021_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2021[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2021_cleaned <- cbind(first_col, dataset_uninsured_population_2021_numeric)

#rename the first column
colnames(dataset_uninsured_population_2021_cleaned)[1] <- colnames(dataset_uninsured_population_2021)[1]

View(dataset_uninsured_population_2021_cleaned)
class(dataset_uninsured_population_2021_cleaned)
class(dataset_uninsured_population_2021_cleaned[[2]])


# Keep the first column as-is
first_col <- dataset_uninsured_population_2022[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2022_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2022[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2022_cleaned <- cbind(first_col, dataset_uninsured_population_2022_numeric)

#rename the first column
colnames(dataset_uninsured_population_2022_cleaned)[1] <- colnames(dataset_uninsured_population_2022)[1]

View(dataset_uninsured_population_2022_cleaned)
class(dataset_uninsured_population_2022_cleaned)
class(dataset_uninsured_population_2022_cleaned[[2]])


# Keep the first column as-is
first_col <- dataset_uninsured_population_2023[[1]]

# Clean and convert the rest of the columns
dataset_uninsured_population_2023_numeric <- as.data.frame(
  lapply(dataset_uninsured_population_2023[ , -1], function(col) {
    cleaned <- gsub("[\"%,]", "", col)
    as.numeric(cleaned)
  }),
  stringsAsFactors = FALSE
)

#Combine back with the first column
dataset_uninsured_population_2023_cleaned <- cbind(first_col, dataset_uninsured_population_2023_numeric)

#rename the first column
colnames(dataset_uninsured_population_2023_cleaned)[1] <- colnames(dataset_uninsured_population_2023)[1]

View(dataset_uninsured_population_2023_cleaned)
class(dataset_uninsured_population_2023_cleaned)
class(dataset_uninsured_population_2023_cleaned[[2]])

