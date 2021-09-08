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

capacity <- c(14,13,14,13,16,NA,NA,20,NA)
m <-mean(capacity,na.rm=TRUE)
m

is.na(capacity)  #To chekc a set of scores for missing data.

#the count of the x
length(x)


print("hello world")
