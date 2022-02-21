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

