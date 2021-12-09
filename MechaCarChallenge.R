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
t.test((susCoil_df$PSI), mu=1500)

lot1 <- susCoil_df[1:50,]
lot2 <- susCoil_df[51:100,]
lot3 <- susCoil_df[101:150,]

t.test((lot1$PSI), mu=1500)
t.test((lot2$PSI), mu=1500)
t.test((lot3$PSI), mu=1500)