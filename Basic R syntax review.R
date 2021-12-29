# Ken Kelley
# An introductory tutorial for R: Objects.

# R as a calculator
############################################################################################################
2258-1990
2258/1990
1900/2258
2258+1990

5+3+9+3.25+4.1+9

(5+3+9+3.25+4.1+9)/6



# We can use mathematical functions as well. Functions, as you will see, play an important role in R. 
sqrt(75)

?sqrt       # The question mark ('?') produces a help file for the particular function (the square root ('sqrt()') function here).
help(sqrt)  #Alterntaively 'help' can be used.

abs(-17.52)

2.718282^6.214608
log(500)
exp(6.214608)
round(4.54343224, digits=2)

pi

# Trigometric functions are in radians (not degrees)
sin(1)
sin(pi/2)

cos(1)
tan(1)

# Define objects (objects, along with functions, are what makes R so powerful)
############################################################################################################
# Define 'x' as 10
x <- 10     
y <- 5      # Define 'y' as 5
x + y       # Add 'x' and 'y' (note that it is not assigned to anything).
X + Y       # Returns an error because X and Y have not been defined (x and y have); R is case sensitive.
z1 <- x + y # Now add 'x' and 'y' and define it as 'z1'. 
z2 = x/y  # One can use the equal sign instead of the "assignment operator"; I think purest use '<-'; note that the equal sign has other uses later. 


help("<-")  # Special characters require 'help' with the character(s) in quotes.
help("*") 

z3 <- sqrt(2*x + y)*y^2             # Define object z3.
z4 <- (z1*(1/z1) + sqrt(y^2)/y)*.5  # Define object z4.

# Logical operators.
a <- 2
b <- 3

# Does the object on the left equal ("==" for equalities) the object on the right?
FALSE == TRUE 
FALSE == FALSE
TRUE == TRUE
TRUE == FALSE

# For numerical measures, it is better to use the 'identical' function (instead of "=="), as numerical instability [numeric imprecision (floating points)].
identical(a, b)
identical(a, 2)

Outcome <- identical(a, 2) # Store the TRUE or FALSE result.

# '!' means "not".
# Does the value on the left _not equal_ the value on the right ("!=" is not equals).
FALSE != TRUE 
FALSE =! FALSE   

# Or, better, if the terms might be numeric. The following asks if the terms are *not* equal. 
!identical(a, b)

# Is the statement on the left true *and* is the statement on the right false.
identical(2*a-1, b) & !identical(a, b) 

# Is the statement on the left true *and* is the statement on the right true.
identical(2*a-1, b) & identical(a, b)

# '|' means "or"; is the statement on the left *or* on the right true?
(2*a-1 == b) | (a == b) 
identical(2*a-1, b) | identical(a, b)


# Here is an if and else statement.
if(a >= b) C <- 5 else{C <- 0} 

# Here is an ifelse statement
ifelse(a >= b, C <- 5, C <- 0)

# List what is in the workspace.
ls()

# Remove the 'C' object from the workspace. 
rm(C)

# Remove all objects from the workspace (be careful).
rm(list = ls())

# Verify everything is removed (more technically, hidden objects are not removed)
ls()

####################################
# Vectors (of variables)

# The 'c' function is to concatenate/combine a set of values.
X1 <- c(102, 104, 101, 93, 100)  
X2 <- c(17, 19, 21, 18, 15)
X3 <- c(4, 5, 7, 1, 3)
Y <- c(96, 87, 62, 68, 77)

X1
X2
X3
Y

# What is the length of 'Y'? Length is the number of elements in the vector Y. 
length(Y)

# Y can be verified as a vector:
is.vector(Y)

# Use 'cbind' to create an N by p (5 by 3) matrix of the three vectors. 'cbind' combines by colums.
X <- cbind(X1, X2, X3)

# Now, X is a matrix, which we be verified:
is.matrix(X)

# Alternatively, we could create X by combining rows.
x <- rbind(c(102, 17, 4),c(104, 19, 5), c(101, 21, 7), c(93, 18, 1), c(100, 15, 3))

# Assign the column names of x to X1, X2, and X3
colnames(x) <- c("X1", "X2", "X3")

# We can determine if two objects are equal by using a double equal sign ('==').
identical(X, x)

# Determine the dimension of X (i.e., the size of the matrix).
dim(X)

# We can extract information from outjects.
N <- dim(X)[1]
p <- dim(X)[2]

# We can extract individual elements from a matrix by identifying the row and column value of the object.
X[1,1] # Extract the element from X in the first row first column.
tmp <- X[1,1] # We can also define the extracted element as an object.

# We can extract sets of rows or sets of columns.
X[,1]       # Extract all rows and the first column.
X[1,]       # Extract all columns and the first row.
X[1:2,]     # Extract the first two rows and all columns.
X[-c(1:2),] # Extract all but the first two rows.

# Vectors can be used in arithmetic expressions; operations are performed element by element.
v <- c(13, 27, 17)
v*2         # Multiplies all values by 2.
sqrt(v^2)   # Squares all values and then takes the square root.

# Length of a vector.
length(v)

# Calculate the square root of the vector.
sqrt(sum((v - mean(v))^2)/(length(v)-1)) 

# Calculate the variance by using newly defined variables.
mean_v <- mean(v)
N <- length(v)
var_v <- sum((v-mean_v)^2)/(N-1)
var_v

# Or, ideally, let R do all of the work.
var(v) 

# The standard deviation from the variance.
sqrt(var(v))

# Or, the standard deviation directly.
sd(v)

# We can obtain the variance (and covariance) of a each of of variables in a covariance matrix.
X # Recall what X is.
S <- var(X)

# We can get a correlation matrix of a set of variables.
rs <- cor(X)

# Get (only) the variances of the variables.
X_variances <-diag(var(X))

# Make a an identity matrix. Note the double defining here (which goes right to left)
ID.Mat <- Inv.SD <- diag(3) 

# Assign the diagonal of ID.Mat the values contained in X.variances. 
# Notice the three different uses of 'diag' in these examples.
diag(ID.Mat) <- X_variances

# Functions (That You Create)
####################################
# R is filled with functions, but a very powerful feature is creating your own functions. 

# Here is a simple function that provides informatino about a circle (detailed). 
Circle.Info <- function(r)
{
  A <- pi*r^2
  D <- 2*r 
  C <- 2*pi*r
  
  Result <- list(Area=A, Diameter=D, Circumference=C)
  return(Result)
}

Output <- Circle.Info(r=5)
Output$Area

# This provides the same information but is more efficient from a programing perspective. In my opinion, sometimes more details in writing the script/function
# pays divideds later becuase it might be easier to follow along with upon returning to your code. There may be a computational cost, but often (in my experience)
# it is worth it. 
Circle.Info <- function(r)
{
  return(list(Area=pi*r^2, Diameter=2*r, Circumference=2*pi*r))
}


# Here is how (the other) function above is used. 
Result <- Circle.Info(r=10)
Result

# One can see the named attributes of an object by using name() (you refer to the object within an object, rather than the value of the object)
names(Result)

# Attributes of an object can be extracted using '$'
Result$Area
Result$Diameter
Result$Circumference

# Actually, you can abgreviate the name of the attribute to the shortest name that is unique among the attributes:
Result$A
Result$D
Result$C
############

#Now, lets make a data frame for a data set. Data frames allow non-numeric values (unlike a matrix)

Data <- as.data.frame(cbind(
  X1=c(102, 104, 101, 93, 100), 
  X2=c(17, 19, 21, 18, 15),
  X3=c(4, 5, 7, 1, 3),
  Y=c(96, 87, 62, 68, 77),
  Type=c("Executive", "Mid.Mang", "Staff", "Staff", "Contract")))

Data 

dim(Data)

#Extract the "Type" column, method 1:
Data["Type"]

# and method 2:
Data$Type

# Extract the value from the second row and third column: Data[rows, columns]:
Data[2, 3]

# Extract row 2 and row 4, from column 3:
Data[c(2, 4), 3]

# The following creates a sequence from 1 to 10
1:10

# A sequence (rows 2 through 4) can be extracted as
Data[2:4, 3]

# Extract all rows for whom "Type==Staff" - there are multiple steps.
# First, we need to identify the rows in which "Staff" occurs:
Data["Type"]=="Staff"

# Then, we need to extract only those rows, so the above (which identifys rows) is used to extract rows (for all columns here):
Data[Data["Type"]=="Staff", ]

# For only the 1st and 3rd column:
Data[Data["Type"]=="Staff", c(1, 3)]

# Here we add a column named 'New' to the existing data frame 'Data':
Data$New <- c(4, 2, 3, 3, 3)
Data

# Here is another new variable but one that has two missing data values, which are denoted with NA:
Data$New2 <- c(7, NA, 11, NA, 13)

# Recall dim(); 'nrow' and 'ncolum' can be used. Alternatively, the attributes of dim() can be extracted:
dim(Data) 
dim(Data)[1] # Extract the number of rows 
dim(Data)[2] # Extract the number of columns

nrow(Data)
ncol(Data)



