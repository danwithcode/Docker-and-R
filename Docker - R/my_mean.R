
# Ask for user inputs
cat("Enter First Value: ")
first_val <- as.numeric(readLines(con = "stdin", n = 1))
cat("Enter Second Value: ")
second_val <- as.numeric(readLines(con = "stdin", n = 1))

x <-c(first_val,second_val)

#' Get the mean of a numeric vector
#'
#' Given a numveric vector as input, the function will get
#' the average of all the values.
#' @param x A vector with numeric values.
#' @param return Returns the numeric average value of the input
my_mean <- function(x) {
    stopifnot(is.numeric(x))
    if (length(x) == 1){
        warning("Only one value specified. Calculating the mean will not do anything")
    }
    result <- sum(na.omit(x)) / length(na.omit(x))
    return(result)
}

my_mean(x)



#Unit testing using "testit" Assertions
#assert("Sanity check", my_mean(c(100,95,100,95)) == 97.5)
#assert("Non-numeric vector input throws an error" has_error(my_mean(as.character(c("basket","ball")))))
#assert("Passing a numeric vector with one value issues a warning", has_warning(my_mean(c(95))))
#assert("NA input does not result NA output", !anyNA(my_mean(c(95, NA, 100, 100, 95))))