# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![](images/mpg.png)

When looking to see which variables are truly affecting the variance in the mpg values, we are examining p-values. P-value tells us the likelihood that we would see similar results if we tested again. A variable with a low p-value is unlikely to provide random amounts of variance, meaning that variable has a significant impact on the mpg. 
Let us make a list from least to greatest and translate the scientific notation values into decimals to better compare them:

vehicle_length:   0.000000000026
ground_clearance: 0.00000052
vehicle_weight:   0.078
AWD:              0.19
spoiler_angle:    0.3069

As seen above, vehicle_length and ground_clearance are the 2 variables that provided a significant non-random amount of variance in the mpg values of the dataset.
________________________________________________________________________________

![](images/mpgline.png)

When written out, our linear regression line is y=6.26x1 + .001245x2 +.06877x3 + 3.546x4 + -3.411x5 + -.0104. From calculus we know that the derivative of a line is its slope. When we take the derivative, we get y=6.26 + .001245 +.06877 + 3.546 + -3.411 which simplifies to 6.465015. This is a positive, non-zero slope.
________________________________________________________________________________
This linear model is not effective in predicting MechaCar prototypes because the p-value of our y-intercept is .0000005 which means there is a significant amount of variability in our dependent variable. The significance of the y-intercept along with the significance of the vehicle_length and the ground_clearance mean that our model needs some scaling to be better at predicting.
________________________________________________________________________________


## Summary Statistics on Suspension Coils


## T-Test on Suspension Coils


## Design a Study Comparing the MechaCar to the Competition


