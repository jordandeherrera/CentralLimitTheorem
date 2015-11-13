library(ggthemes)
library(ggplot2)

dsamp <- diamonds[sample(nrow(diamonds), 1000), ]

hc <- (qplot(carat, price, data=dsamp, colour=cut, size=carat)
+ theme_hc() 
+ scale_colour_tableau("colorblind10")
+ ggtitle("Diamonds Are Forever"))