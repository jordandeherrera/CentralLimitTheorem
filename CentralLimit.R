# Create empty variables for means
means_10 = NULL
means_1000 = NULL

# Create empty variables for distributions
expdist_10 = NULL
expdist_1000 = NULL

# Create 40 simulations with lambda of 0.2
expdist_1 = rexp(40,0.2)

# Create 10 iterations of 40 simulations
for (i in 1 : 10) expdist_10   = c(expdist_10  , rexp(40, 0.2))

# Create 1000 iterations of 40 simulations
for (i in 1 : 1000) expdist_1000 = c(expdist_1000, rexp(40, 0.2))

# Separate each of the iterations of 40 simulations
# into separate samples and then calculate the mean
# of those sample populations

# 1 iteration
means_1 <- mean(expdist_1)

# 10 iterations
means_10   <- unlist(lapply(split(expdist_10, 
              ceiling(seq_along(expdist_10)/40)),mean))

# 1000 iterations
means_1000 <- unlist(lapply(split(expdist_1000, 
              ceiling(seq_along(expdist_1000)/40)),mean))