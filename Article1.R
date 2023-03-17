#This file contains the code I used to execute the exercises in R for Quants, Part I (A)

#Exercise 1 Codes
#Use rnorm() to generate a 20 x 6 matrix. Add column names to the matrix: C, F, T, A, D, K. Extract column A. How do you extract more than one column?

#Generate a random matrix using rnorm() funtion
random_matrix <- matrix(rnorm(20*6, mean = 10, sd = 5), nrow = 20, ncol = 6)
print(random_matrix)
#Assign column names CFTADK
colnames(random_matrix) <- strsplit('CFTADK','', fixed=TRUE)[[1]]
print(random_matrix)
#Extract the A column
A_column <- random_matrix[,"A"]
print(A_column)
#Extract multiple column using indexing
multiple_col <- random_matrix[,1:3]
print(multiple_col)




#Exercise 2 Codes
#Given the following data.frame, get the average of the values for label b.


#generate a random matrix with radom label from 'abcdefg' letters
l <- sample(strsplit('abcdefg','',fixed=TRUE)[[1]],10,replace=TRUE)
d <- data.frame(cbind(value=rnorm(10), label=l))
print(d)
#Checking for data type (this function is obsolete)
anytypes(d)
#Working function for checkin data type in a data frame
str(d)
#Coerce data type of the value column into value
d$value <- as.numeric(d$value)
#subset the b rows from the df
b_rows <- subset(d,label == 'b')
#get the mean value of the b_rows value column
mean(b_rows$value)