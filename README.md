
# Main Overview

In this project 

Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
Run t-tests to determine if the manufacturing lots are statistically different from the mean population
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
The MechaCar dataset contains a sample size of 50 prototypes measuring the miles per gallon across multiple variables. The linear regression was calculated using R in RStudio.

### Linear Regression
R script was applied to the dataset on several variables to get the following coefficients.
![linear-regression](https://github.com/TahaniSury/MechaCar_Statistical_Analysis/blob/main/images/linear-regression.png)


### Summary of Linear Regression model
![summry-linear-regression](https://github.com/TahaniSury/MechaCar_Statistical_Analysis/blob/main/images/summry-linear-regression.png)

. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

A 95% level of confidence was predetermined, meaning the p-value should be compared to alpha = .05 level of significance to verify if statistically significant.
vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.

. Is the slope of the linear model considered to be zero? Why or why not?
Converting from scientific notation, all of the slopes of the variables are shown to be non-zero even though some are close to zero
The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.


## Summary Statistics on Suspension Coils

### total_summary
The summary statistics of all of the manufacturing lots
![total-summry](https://github.com/TahaniSury/MechaCar_Statistical_Analysis/blob/main/images/total-summry.png)

### lot_summary
The means of the lot numbers are similar to the population mean and the sample mean
The variance for the total manufacturing lot is 62 < 100, it's within the expected design specifications of staying under 100 PSI.  when reviewing the data by Lot number, Lot 3 is a large contributing factor to the variance being high. Lot 3 shows a variance of 170 > 100 and does not meet the design specifications. Lot 1 and Lot 2 have lower variance, 1 and 7 respectively.
![lot-summry](https://github.com/TahaniSury/MechaCar_Statistical_Analysis/blob/main/images/lot-summry.png)

## T-Tests on Suspension Coils

### T-test for all Lots

All Manufacturing Lots: p-value = .6028, alpha = .05
.60 > .05,  the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.
![all-lots](https://github.com/TahaniSury/MechaCar_Statistical_Analysis/blob/main/images/all-lots.png)

### T-test for Lot 1

Lot 1 sample actually has the true sample mean of 1500, again as we saw in the summary statistics above. With a p-Value of 1, we cannot reject the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).
![lot1](https://github.com/TahaniSury/MechaCar_Statistical_Analysis/blob/main/images/lot1.png)
### T-test for Lot 2

lot 2 has essentially the same outcome with a sample mean of 1500.02, a p-Value of 0.61; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistical
![lot2](https://github.com/TahaniSury/MechaCar_Statistical_Analysis/blob/main/images/lot2.png)

### T-test for Lot 3

 Here the sample mean is 1496.14 and the p-Value is 0.04, which is lower than the common significance level of 0.05. All indicating to reject the null   hypothesis that this sample mean and the presumed population mean are not statistically different.
![lot3](https://github.com/TahaniSury/MechaCar_Statistical_Analysis/blob/main/images/lot3.png)
