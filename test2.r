# Numeric vectors

# seq() function creates a sequencing vector starting from 10 to 30 by a step

#1-dimensional matrix
#also a vector
y <- seq(10,30) 

y <- 10:30

# step of 2 
y <- seq(10,30,2); y


trifecta <- c(6,8,2)


(num_matrix <- seq(5,100,5))

#rep() function creates a vector repeating values
(repeated_trifecta <- rep(trifecta,4))

#dim() function turns the vector into a 2-dimensional matrix
#5 rows x 4 columns
(dim(num_matrix) <- c(5,4))

#t() function "t"ransposes a matrix by interchaging the rows with the columns
(t(num_matrix))

# matrix() provides another way to create matrices
(num_matrix <- matrix(seq(5,100,5),nrow=5))

#if you add the arugment byrow=T, R fills the matrix by rows
(num_matrix <- matrix(seq(5,100,5),nrow=5, byrow=TRUE))


# How doyou refer a particular element?
num_matrix[5,4]


#####################################################################

#Factor : a nominal (or categorical) variable

#Suppose you're doing a survey of people's eye color.
#As you record a person's eye color,
#you record a number: 1 = amber, 2 = blue, 3 = brown, 4 = gray
# 5 =green, 6 = hazel.
# eye color is a factor, and each color is a level of that factor.
# the factor eye-color has six levels.

eye_color <- c(2,2,4,1,5,5,5,6,1,3,6,3,1,4)

#use the factor() function to turn eye_color into a factor
(feye_color <- factor(eye_color))


#assign the levels of the factor:
levels(feye_color) <- c("amber", "blue", "brown", "gray", "green", "hazel")
feye_color


#Lists
# a list is a collection of objects that are not necessarily of the same type.
# use this to gather the different type of information.

empathy_score <- c(15,21,45,32,61,74,53,92,83,22,67,55,42,44)

# name each argument (eye_code, eyes, and empathy)


eyes_and_empathy <- list(eyes_code=eye_color, eyes=feye_color, empathy=empathy_score)

eyes_and_empathy


#R uses the dollar sign ($) to indicate each component of the list.

eyes_and_empathy$empathy

# How do you refer to a particular object (component) of the list?
eyes_and_empathy$empathy[4]

#Lists and statistics
#Lists are important because numerous statistical functions return lists of objects.
#One statistical function is t.test()

#sample mean, arithmetic mean
(xbar <- mean(eyes_and_empathy$empathy))
#standard deviation of your data
(s <- sd(eyes_and_empathy$empathy))
#total count of the data
(n <- length(eyes_and_empathy$empathy))
mu <- 30


(t <-(xbar-mu) / (s/sqrt(n)))



t.result <- t.test(eyes_and_empathy$empathy, mu=30) #mu = population mean
t.result


