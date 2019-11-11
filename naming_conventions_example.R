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


