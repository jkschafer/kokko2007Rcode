
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

#----------------------------------------------------------------#
#                   Box 2.2 (pg 27-29)                           #
#            Corresponds to Fig. 2.4 & 2.5 on pg 30              #
#----------------------------------------------------------------#

x <- seq(0, 1, by = 0.01)

m <- 5
y <- m * x/(m * x + 1 -x)

pAA <- x * y
pAa <- x * (1 - y)
paA <- (1 - x) * y
paa <- (1 - x) * (1 - y)
# Check to see if they sum to 1
pAA + pAa + paA + paa

N <- 1000
B <- 20 
b <- 0.8

nA <- N * (pAA * b * B + 0.5 * pAa * B + 0.5 * paA * b * B)
na <- N * (0.5 * pAa * B + 0.5 * paA * b * B + paa * B)     

xnew <- nA/(nA + na)

par(mar = c(5, 5, 2, 2))
plot(1, type = "n", xlab = "Frequency of A\nin generation 0", 
     ylab = "Frequency of A males\namong mating males", 
     xlim = c(0, 1), 
     ylim = c(0, 1))

lines(x, xnew)
        

        
        
        



