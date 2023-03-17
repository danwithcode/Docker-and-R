
#Exercise 1: 
#*Revised. I just made a code wherein I will use first class function inside a Higher Order function which I think is the essence of the exercise in the first place

#Define a simple first-class function that squares its input
square <- function(x) {
  return(x^2)
}

#Apply the square function to a vector using lapply(Higher Order Function)
my_vec <- c(1, 2, 3, 4, 5)
result <- lapply(my_vec, square)
print(result)


#Exercise 2:
#Use a closure to generate a parameterless function that caps returns to some threshold x.

#Define closure with outer and inner function
cap_returns <- function(threshold) {
  return(function(x) {
    if (x > threshold) {
      return(threshold)
    } else {
      return(x)
    }
  })
}
#Assign a threshhold
cap_returns <- cap_returns(10)
#this will return 5 as it is not pass the threshold
cap_returns(5)
#this will return 10 as it is way beyond the threshold
cap_returns(15)