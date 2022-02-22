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
