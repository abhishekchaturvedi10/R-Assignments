# R Assignments
Assignments done under computational biology department at IIITD.

Code and output files of the assignments are in respective folders.

1. Anscombe’s quartet (graphics, linear regression) data(anscombe) has variables x1,...,x4,y1,...,y4.

a. Fit linear regression models to each pair using eg model1<-lm(y1~x1,data=anscombe)
b. Use summary() to look at the model summaries. The models appear
   identical.
c. Draw the four x-y scatterplots, and use abline() to add the regression
   line to each (perhaps in a contrasting color)
d. Look at the example code in help(anscombe). Try to work out what
   it is doing.

2. Download the data from UCI machine learning repository
   https://archive.ics.uci.edu/ml/datasets/Early+stage+diabetes+risk+prediction+dataset.
   
   Here the attribute Class (with positive and negative values) is to be modelled
   a) for variable (attributes) which have numerial value, plot the density. 
   b) for data-points lying in positive class make violin plot for two attribute. similarly make violin plot for same attribute value for data-points belonging to negative class. Plot them side by side.
      Check by looking at violin plot if distribution of any attribute is different among data-points belonging to positive or negative class.
   c) Try to model the class using other attributes in the data using linear regression.