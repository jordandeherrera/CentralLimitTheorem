library(ggthemes)
library(ggplot2)

# Create a boxplot of supplement types and doses
plot.supplementDose <- (ggplot(aes(x = supp, y = len), data = ToothGrowth) 
       + geom_boxplot(aes(fill=supp))
       + facet_wrap(~ dose)
+ theme_few() 
+ scale_colour_few()
+ ggtitle("Tooth Length by Supplement and Dose"))

# Create a boxplot of supplement types
plot.supplement <- (ggplot(aes(x = supp, y = len), data = ToothGrowth) 
                        + geom_boxplot(aes(fill=supp))
                        + theme_few() 
                        + scale_colour_few()
                        + ggtitle("Tooth Length by Supplement"))

# Create a boxplot of doses
plot.dose <- (ggplot(aes(x = dose, y = len), data = ToothGrowth) 
                    + geom_boxplot(aes(fill=dose))
                    + facet_grid(. ~ dose)                    
                    + theme_few() 
                    + scale_colour_few()
                    + ggtitle("Tooth Length by Dosage"))

# Create list of plots
par(cex=0.25)
plot.list <- list(plot.supplementDose, plot.supplement, plot.dose)

# Grid of all plots
do.call(grid.arrange, c(plot.list, list(ncol=2)))