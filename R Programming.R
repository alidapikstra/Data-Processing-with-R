#integer
x <- 2L
typeof(x)

#double
y <- 2.5
typeof(y)

#complex
z <- 2 + 3i
typeof(z)

#character
a <- "h"
typeof(a)

#logical
q1 <- T
typeof(q1)
q2 <- FALSE
typeof(q2)

A <- 10
B <- 5

C <- A + B

var1 <- 2.5
var2 <- 4

result <- var1 / var2
result

answer <- sqrt(var2)
answer

greeting <- "Hello"
name <- "Bob"
message <- paste(greeting, name)
message

#Logical:
#TRUE T
#FALSE F

4 < 5
4 == 5
5 > 10

#Logical operators in R
# == (equal to)
# !== (not equal to)
# >
# <
# <=
# >=
# ! (not)
# | (or)
# &
# isTRUE(x)

result <- 4 < 5
result
typeof(result)

result2 <- !TRUE
result2

result | result2
result & result2

isTRUE(result2)

counter <- 1
while(counter < 12){
  print(counter)
  counter2 <- counter + 1
  counter <- counter2
  print(counter)
}
  
for(i in 5:10){
  print("Hello R")
}

for(i in 1:5){
  print("Hello R")
}

5:10

x <- rnorm(1)
if (x > 1){
  answer <- "Greater than 1"
} else if(x >= -1){
  answer <- "Between -1 and 1"
} else{
  answer <- "Less than -1"
}

MyFirstVector <- c(3, 45, 56, 732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

V2 <- c(3L, 12L, 234L, 0L)
is.numeric(V2)
is.integer(V2)
is.double(V2)

V3 <- c("a", "B23", "Hello")
V3
is.character(V3)

seq(1,15)
seq(1,15,2)
z <- seq(1,15,4)
z

rep(3,50)
d <- rep(3,50)
d
rep("a",5)

x <- c(80,20)
y <- rep(x,10)
y

x <- c(1,123,534,13,4) #combine
y <- seq(201,250,11)   #sequence
z <- rep("Hi!",3)      #replicate

w <- c("a", "b", "c", "d", "e")
w
w[1]
w[2]
w[-1]
v <- w[-3]
v
w[1:3]

?ggplot
install.packages("ggplot2")
library(ggplot2)
?ggplot2

qplot(data=diamonds, carat, price,
      colour=clarity, facets=.~clarity)

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
# profit for each month
Profit <- revenue - expenses
Profit

# profit after tax for each month (the tax rate is 30%)
tax <- Profit * 0.3
tax

# profit margin for each month - equals to profit a after tax divided by revenue


# good months - where the profit after tax was greater than the mean for the year

# bad months - where the profit after tax was less than the mean for the year

# the best month - where the profit after tax was max for the year

# the worst month - where the profit after tax was min for the year

#Calculate Profit As The Differences Between Revenue And Expenses
profit <- _ - _
profit

#Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
tax <- round(0.30 * _, _)
tax 

#Calculate Profit Remaining After Tax Is Deducted
profit.after.tax <- _ - _
profit.after.tax

#Calculate The Profit Margin As Profit After Tax Over Revenue
#Round To 2 Decimal Points, Then Multiply By 100 To Get %
profit.margin <- _(_ / _, 2) * _
profit.margin

#Calculate The Mean Profit After Tax For The 12 Months
mean_pat <- _(profit.after.tax)
mean_pat

#Find The Months With Above-Mean Profit After Tax
good.months <- _ _ mean_pat
good.months

#Bad Months Are The Opposite Of Good Months !
bad.months <- _good.months
bad.months

#The Best Month Is Where Profit After Tax Was Equal To The Maximum
best.month <- profit.after.tax == _(profit.after.tax)
best.month

#The Worst Month Is Where Profit After Tax Was Equal To The Minimum
worst.month <- _ == _(_)
worst.month

#Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- _(_ _ _, _)
profit.1000 <- _(_ _ _, _)
profit.after.tax.1000 <- _(_ _ _, _)

#Print Results
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month

#BONUS:
#Preview Of What's Coming In The Next Section
M <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
)

#Print The Matrix
_