#annotation
#this is me adding 2 and 3
2+3
set.seed(1234)

x = rnorm(10000)
mean(x)
meanxhardcoded = 0.01
meandirect = mean(x)
meanxhardcoded > 0.01
meandirect > 0.01
x = 1:5
args(median)
median(x, na.rm = TRUE)
getwd()
?median
??weighted.mean
add_one = function(y) {
  result = y +1
  return(result)
}
add_one(5)

c(-3,4,-5)|>
  abs()|>
  mean()|>
  log()

%>%
  
  
  
  
  
  
install.packages("devtools")
library(devtools)
require(devtools)
devtools::install_github("jack-fitzgerald/eqtesting")
devtools::as.package

packageVersion("devtools")





















5*2
-2*2
8*2
-1*2
3*2



nums = c(5,-2,8,-1,3)
for (i in 1:10000)
     mean(rnorm(10000)
          
          

          
          
          
          
          
          
          
          
df = data.frame(
  height = c(170,180,175),
  weight = c(65,80,72),
  age = c(25,30,28)
)

for(col_name in names(df)) {print(paste("Mean of", col_name,"is", mean(df[col_name])))}



for(col_name in colnames(df))[
  df[,paste0("log",col)] = log(df[,col])
]

















count = 1
while(count <= 5)[
  print(count)
  count = count + 1
]














install.packages("nycflights13")
library(nycflights13)
planes
system.time([
  while reps>0
  delays = c()
  for (i in 1:nrow(flights)) {
    delays[i] = flights$arr_delay[i] + flights$dep_delay[i]
  }
  reps = reps - 1
])









file_size_1 = 1500
file_size_2 = 500
file_size_3 = 0
file_evaluator = function(file_size){
  if (file_size == 0)
  {print("no file detected")
    else if (file size_2>1000)}}

if(file_size_1 > 1000){
  print("file size too large")
} else {
  print("file size is within limits")
} else if




















View(flights)




ACSST1Y2010_S2702_2025_06_03T123607 <- read_csv("ACSST1Y2010.S2702-2025-06-03T123607.csv")
