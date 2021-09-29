#If you run your R script, then just enter "Rscript *.r"

#set the working directory
#setwd("/home/changwan/R")

#get the working directory
getwd()  

#x  unknown variables
#c  "c" is combine.


# the arrow sign <- is assignment operator
# You can use the ' = ' in this fucntion
# But, you will be able to use = in another application
x <- c(3,4,5) 

# the arrow sign <- is assignment operator


ls() #list the objects in the environment


#sum(x) #summation: the objects in the environment
s <- sum(x)
print("summation") 
s

#mean(x) 
# arithematic mean: the average of the numbers in the vector x.
m <- mean(x)
print("mean")
m

#var(x) #sample variance
vv <- var(x)
print("variance")
vv

ls()

capacity <- c(14,13,14,13,16,NA,NA,20,NA) #NA : not available
m <-mean(capacity,na.rm=TRUE)   #na.rm=remove not availiable

is.na(capacity)  

#is.na=is not available. Logical question.
#To check a set of scores for missing data.

#the count of the x
length(x)

sum(x) / length(x) 


# R Functions
# returns the substring, which consists of the characters between  
# the start and stop position. 

substr("abcdefg",2,4)
substr("abcdefg",4,2)
substr("abcdefg",stop=4,start=2)

# "abcdefg" is a character vector with one element.

#User-Defined Functions

sumofsquares <- function(x,y,z){ # list the arguments
    sumsq <- sum(c(x^2,y^2,z^2)) # perform the operations
    return(sumsq) # return the value
}

sumofsquares(3,4,5)

#vectors :  R's fundamental structure

#number vector c=components
x <- c(3,4,5) 

# a character vector
stooges <- c("Moe","Larry","Curly") 

# a logical vector
z <- c(T,F,T,F,T,T) 

# specific components of a vector with a bracked number
stooges[2] 


print("hello world")

