#import the dplyr library

library(dplyr)

#Deliverable 1
#import the mpg dataset
mecha_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
#generate multiple linear regression model
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_table)
#generate summary statistics
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_table))


#Deliverable 2
#import the suspension coils dataset
suspension_table <- read.csv(file='Suspension_Coil.csv', check.names = F,stringsAsFactors = F)
#create summary table based on the PSI column
total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
#create summary table for PSI grouped by lot number
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#Deliverable 3
#compare all manufacturing lots to the population mean
t.test((suspension_table$PSI),mu=1500)
#compare the psi values from lot1 to the population mean
t.test(subset(suspension_table, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
#compare the psi values from lot2 to the population mean
t.test(subset(suspension_table, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
#compare the psi values from lot3 to the population mean
t.test(subset(suspension_table, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
