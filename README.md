# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![](Resources/summary_lm.png) 
<br>
   - According to our results, the vehicle length, ground clearance, and intercept provide a non-random amount of variance to the mpg values. 

   - The slope of this linear model is not considered to be zero because a significant linear relationship exists between dependent and independent variables and therefore the dependent value (mpg) is not determined by random chance. 

   - This model does not predict the mpg of MechaCar prototypes effectively because the intercept is statistically significant which means there are other variables that contribute to the variation in mpg values that have not been included in our model. 

## Summary Statistics on Suspension Coils
![](Resources/total_summary.png)
<br> ![](Resources/lot_summary.png)
   - The current manufacturing data meets the design specification for all manufacturing lots as the total variance for all lots combined is 62.294, below the 100 pounds per square inch specification. However, when looking at the data per individual lot, we can see that Lot 3 has a variance of 170.286 pounds per square inch which exceeds the 100 pound maximum and therefore does not meet the design specification. 

## T-Tests on Suspension Coils
![](Resources/t.test_lot1.png)
   - When looking at the t-test results for Lot 1, we can see that the p-value is equal to 1 because the mean PSI for Lot 1 is exactly 1500 pounds, the same as the population mean that we compared it to. Therefore, we can state that the two means are statistically similar. <br><br>
![](Resources/t.test_lot2.png)
   - The t-test results for Lot 2 provide a p-value of .6072 which is above our significance level of .05. Therefore, we can state that the two means are statistically similar. <br><br>
![](Resources/t.test_lot3.png)
   - The t-test results for Lot 3 provide a p-value of .04168 which is below our signficance level of .05. Therefore, we have sufficient evidence to reject the null hypothesis and we can state that the two means are statistically different. 

## Study Design: MechaCar vs. Competition

In order to quantify how the MechaCar performs against the competition, we could use a one-way ANOVA test using vehicle cost. The null hypothesis would be that the means of all groups are equal (i.e. MechaCar and its competitors have the same vehicle cost) and the alternative hypothesis would be that at least one of the means is different from all other groups (i.e. MechaCar and its competitors do not all have the same vehicle cost). We would use a one-way ANOVA test because we are trying to determine whether or not there is a statistical difference between the distribution means from multiple samples. To run this test, we need all of the cost data for MechaCar and its competition in a cleaned and labeled data frame. The cost column will be our dependent, continuous variable and the type of car will be our independent, categorical variable.
