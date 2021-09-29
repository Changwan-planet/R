#install.packages("MASS") #To make a graph, you should install this library.
Cars93 #Cars holds data on 27 variables for 93 cars available in 1993.

head(Cars93) #The first 6 data sets
head(Cars93,n=10) # The first 10 data sets
tail(Cars93) #The last 6 data sets

Cars93$Price #Select the price coloum

length(Cars93$Price) 


#histogram
hist(Cars93$Price)

hist(Cars93$Price, xlab = "Price (x,$1,100)" xlim = c(0,70), main = "Prices of 93 Models
of 1993 Cars", probability = "True")

#xlab means the title of the axis x. 
#xlim means the limit of the x value in the axis x
#main means the main title of the graph.
#probablity = True show the probablity not the number of data.


lines(density(Cars93$Price)) #You have to make the histogram before lines.


#barplot
table(Cars93$Type)
barplot(table(Cars93$Type)) #You have to make table before barplot.
barplot(table(Cars93$Type), ylim = c(0,25), xlab = "Type", ylab = "Frequency", axis.lty =
"solid", space = .05)

#lty denote line type.
#space denote the space btw. bars.

#Pie graphs
pie(table(Car93$Type))

#Dot charts
table(Cars93$Type)

#Show the type of the frame, table.
type.frame <- table(Cars93$Type)


data.frame(table(Cars93$Type)) #data frame has the variables (headers) and frequency
data.frame(type.frame)

class(type.frame)

dotchar(type.frame$Freq, type.frame$Var1) #dot chart(x numerical, y categorical)
dotchar(type.frame$Freq, type.frame$Var1, xlab = "frequency", ylab = "Type") #dot chart(y categorical, x numerical)
#x must be a numerical vector or matrix

#plot 
plot(Cars93$Horsepower, Cars93$MPG.city, main = "MPG City vs Horsepower")

#plot(y~x) = plot(x,y) 
# "~" means depends on. x : independent variables, y : dependent variables.

plot(Cars93$Horsepower, Cars93$MPG.city, main = "MPG City vs Horsepower", pch=2,
col="blue")
#pch 2 = empty triangle. You can change any symbol with the number of pch
#pch = point of characteristics

#Cylinders
Cars93$Cylinders #show the group number

class(Cars93$Cylinders) #factor dataset of the cylinders

#To forrce the Cylinders-value to be a character, apply as.character() to Cars93$Cylinders
plot(Cars93$Horsepower, Cars93$MPG.city, main = "MPG City vs Horsepower",
pch=as.character(Cars93$Cylinders), col="blue")

#to sho all the pairwise relationships among MPG.city, price, and horsepower 
#(mulitple scatter plots)

cars.subset <- subset(Cars93, select = c(MPG.city, Price, Horsepower))
cars.subset
head(cars.subset) 

#to make graphs with the pairs among more than three variables
pairs(cars.subset)

#box plot

boxplot(Cars93$Horsepower ~ Cars93$Cylinders, xlab=Cylinders, ylab="Horsepower")


#install.packages("ggplot2")

ggplot(Cars93, aes(x=Price))

#The aes() function associate Price with the x-axis.
#in ggplot-wirld, this is called an aesthethic mapping.
#In fact, each argument to aes() is called an aesthetic.

ggplot(Cars93, aes(x=price)) +
       geom_histogram()

ggplot(Cars93, aes(x=Price)) +
   geom_histogram(binwidth=5, color="black", fill="white") +
   labs( x = "Price (x $1000)", y="Frequency", title="Prices of 93 Models of 1993 Cars")

ggplot(Cars93, aes(x=Type)+
      geom_bar() +
      labs(y="Frequency", title="Car type and Frequency in Cars93")

# Dot charts

head((Cars93$Type))

Cars93$Type

table(Cars93$Type)

type.frame <- data.frame(table(Cars93$Type))
type.frame

colnames(type.frame) <- c("Type","Frequency")
type.frame

ggplot(type.frame, aes(x=Frequency, y = Type)) +
      geom_point()

ggplot(type.frame, aes(x=Frequency, y=reorder(Type, Frequency))) +
      geom_point(size = 4) +
      theme_bw() +
      theme(pane1.grid.major.x=element_blank(),
            panel.grid.major.y=element_line(color = "black", linetype = "dotted")) +
      labs(y = "Type")


