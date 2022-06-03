#D1
library(magrittr)

#Use the library() function to load the dplyr package.
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
filename <- file.choose()
mecha_mpg <- read.csv(file=filename,check.names=F,stringsAsFactors = F) 

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 

#D2
#import and read in the Suspension_Coil.csv file as a table.
filename <- file.choose()
mecha_coil <- read.csv(file=filename,check.names=F,stringsAsFactors = F)

#creates a total_summary dataframe to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI),Std_Dev_PSI=sd(PSI),Num_Coil=n(), .groups = 'keep')

#creates a lot_summary dataframe using the group_by() and the summarize() functions 
lot_summary <- mecha_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep') 

# D3

#1

t.test(mecha_coil$PSI,mu=1500)
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
                                          
                                          
                                           

