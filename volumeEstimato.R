##Data Import and library
library(dplyr)
setwd("/Users/siruizhao/BIOL432_Assignment1")
getwd()
mydata <- read.csv("measurements.csv")

#check data
head(mydata)
tail(mydata)
class(mydata)
str(mydata)

#create new variable called limb_volume
#in this assignment, we assume limb is cylinder and can be calculated 
#through v = pi * r^2 * h
mydata <- mydata %>%
  mutate(limb_volume = pi * ((mydata$Limb_width/2)^2) * mydata$Limb_length)
#check
head(mydata)

# write as csv file
write.csv(mydata, "measurements.csv", row.names=FALSE)






