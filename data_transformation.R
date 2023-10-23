#get the AirPassengers dataset from R and transform the time series into a tidy data frame
library(tidyverse)

data <- AirPassengers

data_transform <- function(data){
                                 #transforming the data variable into a dataframe
                                 #and the values as integers
                                 data <- as.data.frame(as.integer(data))
  
                                 #Assigning the name of the column
                                 colnames(data) <- "Passengers"
                                 #Including the Years and Months columns
                                 data <- data %>% mutate(Year = rep(seq(1949,1960), each = 12),
                                                         Month = rep(c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"), 12))
                                
                                 #Rearranging the columns to make it more readable
                                 data <- data[c("Year", "Month", "Passengers")]
  
                                 return(data)


                                 }

