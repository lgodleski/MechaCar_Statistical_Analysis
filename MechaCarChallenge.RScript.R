## Deliverable 1
library(dplyr)
mpg_table <- read.csv(file='MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))

## Deliverable 2
suspension_coil_table <- read.csv(file='Suspension_Coil.csv')
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')


## Deliverable 3
t.test((suspension_coil_table$PSI),mu=1500)
population1 = subset(suspension_coil_table, Manufacturing_Lot == 'Lot1')
t.test((population1$PSI),mu=1500)
population2 = subset(suspension_coil_table, Manufacturing_Lot == 'Lot2')
t.test((population2$PSI),mu=1500)
population3 = subset(suspension_coil_table, Manufacturing_Lot == 'Lot3')
t.test((population3$PSI),mu=1500)
