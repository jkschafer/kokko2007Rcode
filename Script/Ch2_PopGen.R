
#----------------------------------------------------------------#
#                   Box 2.1 (pg 21-22)                           #
#            Corresponds to Fig. 2.2 on pg 21                    #
#----------------------------------------------------------------#

x <- seq(0, 1, by = 0.01)
# now we choose a value of m to be investigated
m <- 5 
# calculate how y depends on x
y <- m * x/(m * x + 1 - x)

par(mar = c(5, 5, 2, 2))
plot(1, type = "n", xlab = "Proportion of A males\nin the population", 
     ylab = "Proportion of A males\namong mating males", 
     xlim = c(0, 1), 
     ylim = c(0, 1))
lines(x, y)

dev.off()

m1 <- 1.5
m2 <- 5
m3 <- 10

y1 <- m1 * x/(m1 * x + 1 - x)
y2 <- m2 * x/(m2 * x + 1 - x)
y3 <- m3 * x/(m3 * x + 1 - x)

par(mar = c(5, 5, 2, 2))
plot(1, type = "n", xlab = "Proportion of A males\nin the population", 
     ylab = "Proportion of A males\namong mating males", 
     xlim = c(0, 1), 
     ylim = c(0, 1))

lines(x, y1); text(0.4, 0.4, "m = 1.5")
lines(x, y2); text(0.4, 0.7, "m = 5")
lines(x, y3); text(0.4, 0.9, "m = 10")

dev.off()

#------------------------------------------------------------------------#



