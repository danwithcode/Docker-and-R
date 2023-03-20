#Exercise 1: 
#Write a function plot_dists(name) that generates the above plot for the given distribution.

#Define parameters of plot
opar <- par(mar=c(3,5,1,1)+0.1)
x <- seq(-5,5, by=0.1)
y <- seq(0,1, by=0.02)

#Define the function
plot_dists <- function(name) {
    if (name == 'dnorm') {
        plot(x, dnorm(x), t='l')
    } else if (name == 'pnorm') {
        plot(x, pnorm(x), t='l')
    } else if (name == 'qnorm') {
        plot(y, qnorm(y), t='l')
    } else if (name == 'rnorm') {
        plot(x, rnorm(x))
    } else {
    stop ("Invalid distribution name.")
    }
}

par(opar)



#Exercise 2:
# Generate a QQ plot using a better fit for the theoretical distribution. Hint: Try using rnorm.
#Note: Changed the data used. I still can't use `getPortfolioReturns()`

#Use mtcars data set
print(mtcars)
#get rnorm of mtcars with same sample numbers
x <- rnorm(nrow(mtcars))
#qqplot the distribution
ggplot(x,mtcars$mpg)