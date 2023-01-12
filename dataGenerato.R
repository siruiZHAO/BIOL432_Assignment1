#this is the r script 1 for assignment 1 from siruizhao

#1. create a vector with a set of 100 species names, 
#randomly selected from a vector of 5 species names of your choosing.
organism <- rep(c("Bos gaurus", "Antelope cervicapra", "Gazella bennettii",
              "Boselaphus tragocamelus", "Canis lupus"), 20)
organism = paste0('"', organism, '"')

#2. A vector of 100 values for Limb_width, 
#randomly selected using a distribution of your choice 
#that makes sense for the width of limbs (e.g. no negative or zero values).
Limb_width <- rnorm(100, mean = 3, sd = 1)

#3. A vector of 100 values for Limb_length, again 
#randomly selected from a distribution of your choosing, 
#but the numbers must make sense.
Limb_length <- rnorm(100, mean = 40, sd = 15)

#4. A vector of 100 values for Observer, 
#randomly selected from a vector of 3 names (you can use any names you like).
Observer <- rep(c("Charles Darwin", "Gregor Mendel", "Robert Hooke"), 
                times = c(33,33,34))
Observer = paste0('"', Observer, '"')

#5. Combine all of the vectors into a data.frame or tibble object 
mydata <- data.frame(organism, Limb_width, Limb_length, Observer)
mydata
#and export to a CSV file called measurements.csv
write.csv(mydata, "measurements.csv", row.names=FALSE)
