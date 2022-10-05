# MechaCar_Statistical_Analysis
## Project Overview

Statistical analysis can be especially helpful when companies are evaluating product design and improvement. In this project, AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG
### Slope Results:
<img width="736" alt="SlopeResults" src="https://user-images.githubusercontent.com/105477190/193951179-a6e917c4-bd9f-4cda-bbb3-7b8f58e8d931.png">

### Summary Stats:
<img width="574" alt="SumStats" src="https://user-images.githubusercontent.com/105477190/193951197-39c22ce4-f508-4b30-bc61-e6c38de9f30c.png">


The vehicle_length and ground_clearance provide non-random amount of variance to the MPG values as p-values are below 0.05.

The slope of the line is not considered to be 0 as the p-value of the model is below 0.05 at 5.35e-11.

This linear model effectively predicts the MPG of MechaCar prototypes as the r-squared value of 0.7149 is a strong level of correlation.


## Summary Statistics on Suspension Coils
### Total Summary Stats:
<img width="265" alt="TotalSum" src="https://user-images.githubusercontent.com/105477190/193951394-e798b1b1-9dfa-441a-a0d2-bfba6e3a92e3.png">

### Statistics by Lot:
<img width="460" alt="StatsbyLot" src="https://user-images.githubusercontent.com/105477190/193951478-883f83bd-f342-4c4a-9495-a70d67361800.png">

### Conclusion:
The overall expectation on performance of the suspension coils is that they perform at a mean of 1498.78 PSI, with a variance of 62.29 and standard deviation of 7.89.

Lot 1 requirements are mean PSI of 1500, variance of 0.98 and standard deviation of 0.99

Lot 2 requirements are mean PSI of 1500.20, variance of 7.47 and standard deviation of 2.73

Lot 3 requirements are mean PSI of 1496.14, variance of 170.29 and standard deviation of 13.05

The variability on lot 1 and 2 is much tigher than lot 3, which is driving the overall requirements up.

## T-Tests on Suspension Coils
### T-Test of All ?Manufacturing Lots against Mean PSI of Population:
<img width="824" alt="Ttest" src="https://user-images.githubusercontent.com/105477190/193951715-650854d5-d0ad-415f-82f4-945c939c344a.png">

### T-Test of Each of 3 Manufacturing Lots Individually Against Mean PSI of Population:
<img width="824" alt="TTest2" src="https://user-images.githubusercontent.com/105477190/193951843-57398c97-2670-456f-900f-a12e15ea9b00.png">

### Conclusion:
Since the p-values of the t-test for Lot 1 and Lot 2 are more than 0.05 we cannot reject the null hypothesis, thus their means are statistically similar the population mean. Lot 3 on the other hand with a p-value of 0.04168 is considered statistically different than the population mean of 1500.

## Study Design: MechaCar vs. Competition
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

### Metrics:
To compare vehicle performance of the MechaCar versus its top competitors, AutosRUs should look at two main performance measures:
- City and Highway Fuel Efficiency
- Horsepower

### Alternative Hypothesis?
- H0: There is no statistifcal difference in the mean Fuel Efficiency and Horsepower between the MechaCar and its competitors.
- HA: There is a statistical difference in the mean Fuel Efficiency and Horsepower between the MechaCar and its competitors.

### What statistical test would you use to test the hypothesis? Why?
- Fuel Efficiency (Miles Per Gallon): A two-sample T-Test should be used to perform this analysis since the independent variable is dichotomous (MechaCar vs. Competitors) and the dependent variable (MPG) is continuous.
- Horsepower: A two-sample T-Test should be used to perform this analysis since the independent variable is dichotomous (MechaCar vs. Competitors) and the dependent variable (horsepower) is continuous.


