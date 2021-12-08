library(dplyr)
library(stats)

# Linear Regression to Predict MPG
mechaCar_df <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_df))

# Summary Statistics on Suspension Coils
susCoil_df <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

total_summary <- susCoil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI))

lot_summary <- susCoil_df %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI), .groups='keep')

# T-Test on Suspension Coils


# Design a Study Comparing the MechaCar to the Competition