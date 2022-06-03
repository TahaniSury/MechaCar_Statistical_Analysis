install.packages("splitstackshape")
install.packages("tidyverse")
install.packages("reshape2")
install.packages("devtools")
install.packages("plotly")
install.packages("crosstalk")
install.packages("DT")
install.packages("fivethirtyeight")
install.packages("dplyr")

#D1

#Use the library() function to load the dplyr package.
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
mecha_mpg <- read.csv(file='./Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 

#D2
#import and read in the Suspension_Coil.csv file as a table.
mecha_coil <- read.csv(file='./Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 


