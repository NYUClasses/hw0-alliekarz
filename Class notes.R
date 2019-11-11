#-------- Naming conventions example
#=========================================


#-------- An example of the Camel style

helloWorld <- "Hello world"

helloWorlf 

helloWorld 


#-------- Example of Snake style

hello_world_again <- "Hello world again"

hello_worlf_again

hello_world_again


#-------- An example of alternative style

hello.world.again

hello_worlf_again

hello.world.again



# ------- Examples for illegal variable naming

8number <- 8
num?ber8 <- 8
num-ber8 <- 8

# and a valid one
number8 <- 8




#-------- Vector recycling example
#=========================================


# Example 1
u <- c(1, 3.1, 2.6, 0)
v1 <- 2

u + v1

# Example 2
u  <- c(1, 3.1, 2.6, 0)
v2 <- c(2, 1)

u + v2


# Example 3
u  <- c(1, 3.1, 2.6, 0, 0)
v2 <- c(2, 1)

(2*u + v2)


# Example 4
x <- c(12, 20.1, 53.6, 2, 7.43, 24, 8.2, 6)

y <- c(x, 0, x)
v <- 2*x + y  + 1

# Summing three vectors, each with a different length:
2*x ; length(2*x)
y   ; length(y)
1   ; length(1)

# Three options to plot the result
print(v)
v
(v <- 2*x + y  + 1)


###########################################################

vector(mode = "character", length = 5)
?seq

########

x <- c(12, 20.1, 53.6, 2, 7.43, 24, 8.2, 6)
y <- c(x, 0, x)
z <- 2*x + y  + 1

logical_vector <- (x > 13)
logical_vector

# Create a numeric vector
v <- c(2, 15, 5, 7)
# Create a naming vector
n <- c("two", "fifteen", "five", "seven")
# Assign the names to the vector
names(v) <- n

# Print our vector
print(v)
##     two fifteen    five   seven 
##       2      15       5       7

# Subsetting by index
v[c(1,2)]
##     two fifteen 
##       2      15

# Subsetting by name
v[c("two", "seven")]
##   two seven 
##     2     7

# Subset all but some (with exclusion operator)
v[-c(1,2)]
##  five seven 
##     5     7

v[c("seven", "two")]

v[-c("seven", "two")]

# Subset using logicals
v[c(FALSE, TRUE, TRUE, FALSE)]

## fifteen    five 
##      15       5

v[c(FALSE, TRUE, TRUE)]

x[c(3,7)] <- NA
x
is.na(x)
which(is.na(x))
sum(is.na(x))

x[sample(1:20, 2)] <- NA
x

paste("Learning R is", c("fun", "tough"), sep = "...")


x <- c(2, 1, 5, 6)
y <- c(9, 1, 3)
z <- c(5, 2, 8)

xyz <- cbind(x, y, z)
xyz

matrix(1:7, nrow = 3, ncol = 4)

letters
month.abb

char <- c("hello", "my", "name")

char_matrix <- matrix(cbind(char,y))
char_matrix

#what will Matrix_m[4] print? specify the rational behind this. the 4th element of the linear vector. 
Matrix_m <- matrix(1:9, nrow=3)

rowSums(Matrix_m) 
colSums(Matrix_m)

dim(Matrix_m)



###different data types 
## factors are determined through categorical variables 
blood_group_vector <- c("AB", "O", "B+", "AB-", "O", "AB", "A", "A", "B", "AB-")
blood_group_factor <- factor(blood_group_vector)
blood_group_factor

str(blood_group_factor) ##gives the structure of the element 

paste(as.character(as.integer(blood_group_factor), " "))
#[1] "2" "6" "5" "3" "6" "2" "1" "1" "4" "3"

# Define another set of levels over-riding default
blood_group_factor2 <- factor(blood_group_vector, 
                              levels = c("A", "B", "B+", "AB", "AB-", "O"))
print(blood_group_factor2)
str(blood_group_factor2)


# Define a new blood type vector
blood_type <- c("B", "A", "AB", "A", "O")
# Define `blood_type_factor` as a factor
blood_type_factor <- factor(blood_type)
blood_type_factor
#rename the factors 
levels(blood_type_factor) <- c("BT_A", "BT_AB", "BT_B", "BT_O") #need to keep alphabetical order

##gl 
factorZ <- gl(3, 2, length = 12)
#eg, 3 genotypes, 2 mice for each genotype 
print(factorZ)
#can change genotype labels using factor(levels = )


#Nominal factors: These are categorical variables that cannot be ordered, 
#like blood group. For example, it doesn’t make sense to say blood group A < blood group B.
#Ordinal factors: These are categorical variables that can be ordered. 
#For instance, tumor sizes. We can say T1 (tumor size 2cm or smaller) < T2 (tumor size larger than 2cm but smaller than 5 cm).


#Lists can hold multiple R objects, without having to perform coercion.
#coercion takes place if you have both character and numbers in the vector. 
lst <- list("Blood-sugar", "High", 140, "mg/dL") 
lst
#[[1]]    #this is the element number in the list 
#[1] "Blood-sugar"

#[[2]]
#[1] "High"

#[[3]]
#[1] 140

#[[4]]
#[1] "mg/dL"

#name elements in the list 
names(lst) <- c("Fluid", "Category", "Value", "Units")
str(lst)

blood_test <- list(Fluid="Blood sugar", Category="High", 
                   Value=140, Units="mg/dL")
patient <- list(Name="Mike", Age=36, BloodTest = blood_test)
patient
class(patient[2]) #list
class(patient[[2]]) #numeric

patient[c(1,3)]

patient[[c(1,3)]]

patient[[c(3,1)]]
patient[[1]][[3]]

patient$Name
patient$BloodTest$Category
patient$BloodTest$Date <- "Sept 14" #add new field 
patient 


###data frames 
# Create name, age and logical vectors
name <- c("Anne", "James", "Mike", "Betty")
age <- c(20, 43, 27, 25)
cancer <- c(TRUE, FALSE, FALSE, TRUE)
# Form a data frame
df <- data.frame(name, age, cancer)
df
names(df) <- c("Name", "Age", "Cancer_Status")
attributes(df) #gives names, class, and rownames 
str(df)

df[,2]
df[2]

#extend the dataframe 
#define the new column as a vector 

Tumor_size_vector <- c("T3", "T0", "T0", "T2")
df$tumorsize <- Tumor_size_vector
df
str(df)

df<- data.frame(...)
##dataframes make characters into factors, use data.frame(data, etc, stringsAsFactors=FALSE) to override this

##to append a row: make  new mini dataframe 
# Create a data frame (pay attention to the capital letters at the variable names!)
tom <- data.frame(name="Tom", age=47, cancer="TRUE", tumorsize="T2")
# And append
df <- rbind(df, tom)
df

#sort by a particular variable 
# Rank the entries of a column, say "Age"
ranks <- order(df$age)
ranks
# Sort the data frame according to the rank
df[ranks,]




########NOTES: lecture 4 

# If needed, install RCurl package, then load the package
# install.packages("RCurl")
library(RCurl)
# Import the HANES data set from GitHub; break the string into two for readability
# (Please note this readability aspect very carefully)
repoURL <- "https://raw.githubusercontent.com/NYUClasses/NHANES_datasets/master"
fileURL <- "/NYC_HANES_DIAB.csv"
# Paste it to constitute a single URL 
URL <- paste(repoURL, fileURL, sep="")
HANES <- read.csv(text = getURL(URL))


str(HANES)

# Convert them to factors
HANES$GENDER <- as.factor(HANES$GENDER)
HANES$AGEGROUP <- as.factor(HANES$AGEGROUP)
HANES$HSQ_1 <- as.factor(HANES$HSQ_1)

# Now observe the structure
str(HANES)

?plot

HANES$GENDER <- factor(HANES$GENDER, labels = c("M", "F"))

plot(HANES$GENDER, main = "Gender", ylab= "Count")

plot(HANES$GENDER, HANES$AGEGROUP, xlab="Gender", ylab="Age Group")

plot(HANES$A1C, xlab="Index", ylab="A1C-- Hemoglobin Percentage")

plot(HANES$A1C, HANES$UACR, pch=4)

##use semicolon to execute 2 functions in the same line 
##na.rm=T means please remove the NA values before you look for the max 
min(HANES$A1C, na.rm = T); max(HANES$A1C, na.rm = T)
## [1] 3
## [1] 13.4

min(HANES$UACR, na.rm = T); max(HANES$UACR, na.rm = T)
## [1] 0.002412969
## [1] 5327

plot(HANES$A1C, HANES$UACR, pch = 4,
     ylim=c(0, 10))


##rmarkdown 
#Different format from rscript 

#################
##LECTURE 5 

# Form a logical vector consisting only the MALE gender
HANES_MALE <- HANES$GENDER == "M"
# Select only the records for the male population
MALES_DF <- HANES[HANES_MALE,]
# Make an histogram
hist(MALES_DF$A1C,
     main = "The distribution of A1C among males",
     xlab = "Glycohemoglobin percentage")



# Form a logical vector consisting only the FEMALE gender
HANES_FEMALE <- HANES$GENDER == "F"
# Select only the records for the female population
FEMALES_DF <- HANES[HANES_FEMALE,]


# Make an historgam
hist(FEMALES_DF$A1C,
     main = "The distribution of A1C among females",
     xlab = "Glycohemoglobin percentage")

plot(HANES$LDL, HANES$HDL)

plot(HANES$GLUCOSE, HANES$GLUCOSESI, xlab = "Plasma glucose [mg/dL]", ylab = expression(paste("Blood Glucose SI units [", mu, "mole/L]")), main = "Plasma vs Blood Glucose", type = "o", col="blue")


# Set the par function with mfrow to 2x2 "grid"
savePar <- par(mfrow = c(2,2), col = rgb(0, 0, 0, .3), pch = 16, cex = .6)
# Plot LDL vs HDL ; Plot A1C vs HDL
plot(HANES$LDL, HANES$HDL) ; plot(HANES$A1C, HANES$HDL)
# Plot GLUCOSE vs HDL ; # Plot CHOLESTEROLTOTAL vs HDL
plot(HANES$GLUCOSE, HANES$HDL) ; plot(HANES$CHOLESTEROLTOTAL, HANES$HDL)

attach(HANES)
plot(GLUCOSE, HDL)
search()
?attach
detach(HANES)

par(mfrow = c(1,1))

# Create a grid on how our figures should appear
grid <- matrix(c(1,1,2,3), nrow=2, ncol=2, byrow=FALSE)
# Pass it to the layout function
layout(grid)
# Plot LDL vs HDL
plot(HANES$LDL, HANES$HDL)
# Plot GLUCOSE vs HDL
plot(HANES$GLUCOSE, HANES$HDL)
# Plot CHOLESTEROLTOTAL vs HDL
plot(HANES$CHOLESTEROLTOTAL, HANES$HDL)
# Reset the layout
layout(1)

x <- 8 
#print if x is negative 
 if(x<0) {print ("x is a negative number")} else {print ("x is positive or zero")}


if (condition 1) {
  expression
} else if (condition 2) {
  expression
} else {
  expression
}


#R provides logical operators:
  
 # AND with symbol  &
 # OR with symbol      |
 # NOT with symbol   !


##conditional statements 
x <- c(1, 2, 3)
if (x[1] > x[2]) {print(x[1])} else {print (x[2])}
if(x[1] > x[2] & x[1] > x[3]) {print(x[1])} else 
  
 # Note: R comes out of the if-else section as soon as the condition is met. 
  #It will not evaluate further conditions down the line even if they satisfy.

  We can apply logical operators on vectors and matrices - works element wise:
  
  c(TRUE,TRUE,FALSE) & c(FALSE,TRUE,TRUE) will evaluate to FALSE TRUE FALSE.

c(TRUE,TRUE,FALSE) | c(FALSE,TRUE,TRUE) will evaluate to TRUE TRUE TRUE.

Also, we have && and || operators in R. The difference between single &and &&is that, && will only look at the first elements of the vectors. Similarly for ||. Thus,

c(TRUE,TRUE,FALSE) && c(FALSE,TRUE,TRUE) will evaluate to FALSE and

c(TRUE,TRUE,FALSE) || c(FALSE,TRUE,TRUE) will evaluate to TRUE.

We can check two objects are equal by the == sign or inequality using != operator.

# Check the quality of logical objects
TRUE == TRUE
# Check the quality of logical objects
TRUE == FALSE
# Compare strings
"hi" == "hello"
# Or numbers
2 == 2
# Check inequality
2 != 3
## [1] TRUE
## [1] FALSE
## [1] FALSE
## [1] TRUE
## [1] TRUE

Also, we have && and || operators in R. The difference between single &and &&is that, && will only look at the first elements of the vectors. Similarly for ||. Thus,

c(TRUE,TRUE,FALSE) && c(FALSE,TRUE,TRUE) will evaluate to FALSE and

c(TRUE,TRUE,FALSE) || c(FALSE,TRUE,TRUE) will evaluate to TRUE.



#single = is like <- 
#double == is finding if something equals something else 
# ! is not 

2 != 3 #true 

"hello" >= "goodbye"
#true 


# Are any of the values TRUE?
any(c(FALSE, FALSE, TRUE, FALSE))


# Here we have a list (a vector) of all sort of complex bacterial famalies 
bacFamVec <- c("Cyclobacteriaceae", "Leuconostocaceae", 
               "Leptotrichiaceae", "Pirellulaceae",
               "Rhizobiaceae", "Methylobacteriaceae", 
               "Mycobacteriaceae", "Staphylococcaceae" )

# Does the "Clostridiaceae" one of them?
( "Clostridiaceae" %in% bacFamVec )
## [1] FALSE


##########
# LECTURE 6 


for (val in sequence)
{
  statement
}



for (i in 1:10)
{
  y <- i*3
  print(y)
}

# Set the power here

# Start a loop
#save the result as a vector 
n <- 3
vec <- c(4,5,6,9)
for (k in 1:length(vec)) 
  {
  out[k] <- vec[k]^n  
  print(out)
}


dim(HANES)
##to iterate over any number of dimensions 
for (n in 1:dim(HANES)[1]) {}
for (n in 1:nrow(HANES)) {} 


##unfinished 
mysample <- sample(1:nrow(HANES), 100)
for (j in 1:100) {
  HANES$cholRatio[j],] <- HANES$CHOLESTEROLTOTAL[mysample[j]] / HANES$HDL[mysample[j]]
}


##vectorization 
#this: 
for(i in 1:10){
i <- i*3
print(i)}

#is the same as this: 
i <- 1:10
i*3

##use vectorized wherever possible 


##apply()
##1 for rows, 2 for columns 
#Thing to be aware of…
#Apply converts any data.frame into a matrix 
#(and therefore all values to the same datatype) 
#Whenever the range includes any non-numeric columns, all the results are yielding NAs:

#lapply: Can be used on lists and returns a list

l <- lapply(HANES, is.numeric)
head(l)

#The by() function: apply a function to a data frame split by factors
#The general format:
#```by(data, INDICES, FUN)```
##gives UACR mean for diabetes, no diabetes, no dx 

by(HANES[,"UACR"], list(HANES$DX_DBTS, HANES$GENDER), mean)
HANES <- na.omit(HANES)

#indices can have multiple factors -- use list() to include 

#####functions 
# The add function
add <- function(x, y=1) {
  x+y
}

# The add function
add <- function(x, y=1) {
  x+y
}
# Print the formals arguments
formals(add)
# Print the body 
body(add)
# Print the environment
environment(add)


#Functions are just objects in R and act like any other object.

#You can assign a function to any other object and the object will behave exactly like the assigned function.

#Function need not have any name - they are called anonymous functions.

#Anonymous functions has to be called in one line. For example, (function (x) {x+1})(2) is an increment function that will produce the output 3.


sapply(1:8, function (x) {x+1})



###########################

#LECTURE 7 

x <- 10 
f <- function() {
  x <- 1 
  y <- 3 
  c(x,y)
} 

f()

##try again without x 
x <- 10 
f <- function() {

  y <- 3 
  c(x,y)
} 

f()


##new function 
f <- function() {
  x <- 1 
  y <- 3 
  z <- 8 
 res1 <- c(x,y) 
 res2 <- c(y,z)
 return(res1)
}
f()

fout <- f() 
fout


# Install a package
install.packages("tidyverse")

# Load/activate a package
library(tidyverse)

# Load the package RCurl
library(RCurl)
# Import the HANES data set from GitHub; break the string into two for readability
repoURL <- "https://raw.githubusercontent.com/NYUClasses/NHANES_datasets/master"
fileURL <- "/NYC_HANES_DIAB.csv"
# Paste it to constitute a single URL 
URL <- paste(repoURL, fileURL, sep="")
HANES <- read.csv(text = getURL(URL))
# Rename the GENDER factor for identification
HANES$GENDER <- factor(HANES$GENDER, labels=c("M","F"))
# Rename the AGEGROUP factor for identification
HANES$AGEGROUP <- factor(HANES$AGEGROUP, labels=c("20-39","40-59","60+"))
# Rename the HSQ_1 factor for identification
HANES$HSQ_1 <- factor(HANES$HSQ_1, labels=c("Excellent","Very Good","Good", "Fair", "Poor"))
# Rename the DX_DBTS as a factor
HANES$DX_DBTS <- factor(HANES$DX_DBTS, labels=c("DIAB","DIAB NO_DX","NO DIAB"))
# Omit all NA from the data frame
HANES <- na.omit(HANES)


##ggplot () creates a coordinate system that we can add layers to. 
#the first argument is the data 
ggplot(data=HANES)
#then we add more layers 
#general graphing template: 
#ggplot(data = <DATA>) + <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

g <- ggplot(data=HANES) + 
  geom_point(mapping = aes(x=log(A1C), y = log(UACR), shape=DX_DBTS))
g
str(g)

g <- ggplot(data=HANES) + 
  geom_point(mapping = aes(x=log(A1C), y = log(UACR), color=DX_DBTS, size=AGEGROUP)) + 
  theme_linedraw(base_size = 16) + labs(color= "Diag. Status", size = "Age Group")
g


g <- ggplot(data=HANES) + 
  geom_point(mapping = aes(x=log(A1C), y = log(UACR), alpha=reorder(AGEGROUP, desc(AGEGROUP))) + 
  theme_linedraw(base_size = 16) + labs(alpha = "Age Group")
g ##reversed so younger people are darker and older are lighter 

# Make a ggplot with asthetic shape for the variable DX_DBTS
ggplot(data = HANES) + 
  geom_point(mapping = aes(x = log(A1C), y = log(UACR)), color="blue") #make points blue 


ggplot(data = HANES) + 
  geom_point(mapping = aes(x = log(A1C), y = log(UACR), color=A1C <5)) 


#One way to add additional variables is with aesthetics.
#Another way, particularly useful for categorical variables, is to split plots into what are known as facets, subplots that each display one subset of the data.
#To facet a plot by a single variable, the function facet_wrap() is useful.
#The first argument of facet_wrap() should be a formula, which we create with ~ sign followed by a variable name (Note: the use of “formula” here is as the name of a data structure in R, not a synonym for “equation”).
# The variable that we pass to facet_wrap() should be discrete.
# Make a ggplot with facets
ggplot(data = HANES) + 
  geom_point(mapping = aes(x = log(A1C), y = log(UACR))) + 
  facet_wrap(~ DX_DBTS, nrow = 1)


# To facet our plot on the combination of two variables, we should add facet_grid() to our plot call.
#The first argument of facet_grid() is also a formula. This time the formula should contain two variable names separated by a ~.

# Make a ggplot with facet grid - GENDER vs DX_DBTS
ggplot(data = HANES) + 
  geom_point(mapping = aes(x = log(A1C), y = log(UACR))) + 
  facet_grid(GENDER ~ DX_DBTS)


ggplot(data = HANES) + 
  geom_point(mapping = aes(x = log(HDL), y = log(CHOLESTEROLTOTAL))) +
  facet_grid(AGEGROUP ~ .)

ggplot(data = HANES) + 
  geom_point(mapping = aes(x = log(UALBUMIN), y = log(GLUCOSE))) +
  facet_grid(. ~ DX_DBTS)







