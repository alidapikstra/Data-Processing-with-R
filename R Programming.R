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

profit.after.tax <- Profit - tax
profit.after.tax

# profit margin for each month - equals to profit after tax divided by revenue
profit.margin <- round(profit.after.tax / revenue, 2) * 100
profit.margin


# good months - where the profit after tax was greater than the mean for the year
mean_pat <- mean(profit.after.tax)
mean_pat
good.months <- profit.after.tax > mean_pat
good.months

# bad months - where the profit after tax was less than the mean for the year
bad.months <- !good.months
bad.months

# the best month - where the profit after tax was max for the year
best.month <- profit.after.tax  == max(profit.after.tax)

# the worst month - where the profit after tax was min for the year
worst.month <- profit.after.tax  == min(profit.after.tax)
worst.month

#units of thousands
revenue.1000 <- round(revenue / 1000)
expenses.1000 <- round(expenses / 1000)
profit.1000 <- round(Profit / 1000)
profit.after.tax.1000 <- round(profit.after.tax / 1000)

#output
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month

#matrices
m <- rbind(
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
m

#Dear Student,
#
#Welcome to the world of Basketball Data!
#I'm sure you will enjoy this section of the R Programming course.
#
#Instructions for this dataset:
# Simply select ALL the lines in this script by pressing 
# CTRL+A on Windows or CMND+A on a Mac and execute them
# Once you have executed the commands the following objects
# will be created:
# Matrices:
# - FieldGoalAttempts
# - FieldGoals
# - Games
# - MinutesPlayed
# - Salary
# Vectors:
# - Players
# - Seasons
#We will go understand these inside the course.
#
#Sincerely,
#Kirill Eremenko
#www.superdatascience.com

#Copyright: These datasets were prepared using publicly available data.
#           However, theses scripts are subject to Copyright Laws. 
#           If you wish to use these R scripts outside of the R Programming Course
#           by Kirill Eremenko, you may do so by referencing www.superdatascience.com in your work.

#Comments:
#Seasons are labeled based on the first year in the season
#E.g. the 2012-2013 season is preseneted as simply 2012

#Notes and Corrections to the data:
#Kevin Durant: 2006 - College Data Used
#Kevin Durant: 2005 - Proxied With 2006 Data
#Derrick Rose: 2012 - Did Not Play
#Derrick Rose: 2007 - College Data Used
#Derrick Rose: 2006 - Proxied With 2007 Data
#Derrick Rose: 2005 - Proxied With 2007 Data

#Seasons
Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Salaries
KobeBryant_Salary <- c(15946875,17718750,19490625,21262500,23034375,24806250,25244493,27849149,30453805,23500000)
JoeJohnson_Salary <- c(12000000,12744189,13488377,14232567,14976754,16324500,18038573,19752645,21466718,23180790)
LeBronJames_Salary <- c(4621800,5828090,13041250,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
CarmeloAnthony_Salary <- c(3713640,4694041,13041250,14410581,15779912,17149243,18518574,19450000,22407474,22458000)
DwightHoward_Salary <- c(4493160,4806720,6061274,13758000,15202590,16647180,18091770,19536360,20513178,21436271)
ChrisBosh_Salary <- c(3348000,4235220,12455000,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
ChrisPaul_Salary <- c(3144240,3380160,3615960,4574189,13520500,14940153,16359805,17779458,18668431,20068563)
KevinDurant_Salary <- c(0,0,4171200,4484040,4796880,6053663,15506632,16669630,17832627,18995624)
DerrickRose_Salary <- c(0,0,0,4822800,5184480,5546160,6993708,16402500,17632688,18862875)
DwayneWade_Salary <- c(3031920,3841443,13041250,14410581,15779912,14200000,15691000,17182000,18673000,15000000)
#Matrix
Salary <- rbind(KobeBryant_Salary, JoeJohnson_Salary, LeBronJames_Salary, CarmeloAnthony_Salary, DwightHoward_Salary, ChrisBosh_Salary, ChrisPaul_Salary, KevinDurant_Salary, DerrickRose_Salary, DwayneWade_Salary)
rm(KobeBryant_Salary, JoeJohnson_Salary, CarmeloAnthony_Salary, DwightHoward_Salary, ChrisBosh_Salary, LeBronJames_Salary, ChrisPaul_Salary, DerrickRose_Salary, DwayneWade_Salary, KevinDurant_Salary)
colnames(Salary) <- Seasons
rownames(Salary) <- Players

#Games 
KobeBryant_G <- c(80,77,82,82,73,82,58,78,6,35)
JoeJohnson_G <- c(82,57,82,79,76,72,60,72,79,80)
LeBronJames_G <- c(79,78,75,81,76,79,62,76,77,69)
CarmeloAnthony_G <- c(80,65,77,66,69,77,55,67,77,40)
DwightHoward_G <- c(82,82,82,79,82,78,54,76,71,41)
ChrisBosh_G <- c(70,69,67,77,70,77,57,74,79,44)
ChrisPaul_G <- c(78,64,80,78,45,80,60,70,62,82)
KevinDurant_G <- c(35,35,80,74,82,78,66,81,81,27)
DerrickRose_G <- c(40,40,40,81,78,81,39,0,10,51)
DwayneWade_G <- c(75,51,51,79,77,76,49,69,54,62)
#Matrix
Games <- rbind(KobeBryant_G, JoeJohnson_G, LeBronJames_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, ChrisPaul_G, KevinDurant_G, DerrickRose_G, DwayneWade_G)
rm(KobeBryant_G, JoeJohnson_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, LeBronJames_G, ChrisPaul_G, DerrickRose_G, DwayneWade_G, KevinDurant_G)
colnames(Games) <- Seasons
rownames(Games) <- Players

#Minutes Played
KobeBryant_MP <- c(3277,3140,3192,2960,2835,2779,2232,3013,177,1207)
JoeJohnson_MP <- c(3340,2359,3343,3124,2886,2554,2127,2642,2575,2791)
LeBronJames_MP <- c(3361,3190,3027,3054,2966,3063,2326,2877,2902,2493)
CarmeloAnthony_MP <- c(2941,2486,2806,2277,2634,2751,1876,2482,2982,1428)
DwightHoward_MP <- c(3021,3023,3088,2821,2843,2935,2070,2722,2396,1223)
ChrisBosh_MP <- c(2751,2658,2425,2928,2526,2795,2007,2454,2531,1556)
ChrisPaul_MP <- c(2808,2353,3006,3002,1712,2880,2181,2335,2171,2857)
KevinDurant_MP <- c(1255,1255,2768,2885,3239,3038,2546,3119,3122,913)
DerrickRose_MP <- c(1168,1168,1168,3000,2871,3026,1375,0,311,1530)
DwayneWade_MP <- c(2892,1931,1954,3048,2792,2823,1625,2391,1775,1971)
#Matrix
MinutesPlayed <- rbind(KobeBryant_MP, JoeJohnson_MP, LeBronJames_MP, CarmeloAnthony_MP, DwightHoward_MP, ChrisBosh_MP, ChrisPaul_MP, KevinDurant_MP, DerrickRose_MP, DwayneWade_MP)
rm(KobeBryant_MP, JoeJohnson_MP, CarmeloAnthony_MP, DwightHoward_MP, ChrisBosh_MP, LeBronJames_MP, ChrisPaul_MP, DerrickRose_MP, DwayneWade_MP, KevinDurant_MP)
colnames(MinutesPlayed) <- Seasons
rownames(MinutesPlayed) <- Players

#Field Goals
KobeBryant_FG <- c(978,813,775,800,716,740,574,738,31,266)
JoeJohnson_FG <- c(632,536,647,620,635,514,423,445,462,446)
LeBronJames_FG <- c(875,772,794,789,768,758,621,765,767,624)
CarmeloAnthony_FG <- c(756,691,728,535,688,684,441,669,743,358)
DwightHoward_FG <- c(468,526,583,560,510,619,416,470,473,251)
ChrisBosh_FG <- c(549,543,507,615,600,524,393,485,492,343)
ChrisPaul_FG <- c(407,381,630,631,314,430,425,412,406,568)
KevinDurant_FG <- c(306,306,587,661,794,711,643,731,849,238)
DerrickRose_FG <- c(208,208,208,574,672,711,302,0,58,338)
DwayneWade_FG <- c(699,472,439,854,719,692,416,569,415,509)
#Matrix
FieldGoals <- rbind(KobeBryant_FG, JoeJohnson_FG, LeBronJames_FG, CarmeloAnthony_FG, DwightHoward_FG, ChrisBosh_FG, ChrisPaul_FG, KevinDurant_FG, DerrickRose_FG, DwayneWade_FG)
rm(KobeBryant_FG, JoeJohnson_FG, LeBronJames_FG, CarmeloAnthony_FG, DwightHoward_FG, ChrisBosh_FG, ChrisPaul_FG, KevinDurant_FG, DerrickRose_FG, DwayneWade_FG)
colnames(FieldGoals) <- Seasons
rownames(FieldGoals) <- Players

#Field Goal Attempts
KobeBryant_FGA <- c(2173,1757,1690,1712,1569,1639,1336,1595,73,713)
JoeJohnson_FGA <- c(1395,1139,1497,1420,1386,1161,931,1052,1018,1025)
LeBronJames_FGA <- c(1823,1621,1642,1613,1528,1485,1169,1354,1353,1279)
CarmeloAnthony_FGA <- c(1572,1453,1481,1207,1502,1503,1025,1489,1643,806)
DwightHoward_FGA <- c(881,873,974,979,834,1044,726,813,800,423)
ChrisBosh_FGA <- c(1087,1094,1027,1263,1158,1056,807,907,953,745)
ChrisPaul_FGA <- c(947,871,1291,1255,637,928,890,856,870,1170)
KevinDurant_FGA <- c(647,647,1366,1390,1668,1538,1297,1433,1688,467)
DerrickRose_FGA <- c(436,436,436,1208,1373,1597,695,0,164,835)
DwayneWade_FGA <- c(1413,962,937,1739,1511,1384,837,1093,761,1084)
#Matrix
FieldGoalAttempts <- rbind(KobeBryant_FGA, JoeJohnson_FGA, LeBronJames_FGA, CarmeloAnthony_FGA, DwightHoward_FGA, ChrisBosh_FGA, ChrisPaul_FGA, KevinDurant_FGA, DerrickRose_FGA, DwayneWade_FGA)
rm(KobeBryant_FGA, JoeJohnson_FGA, LeBronJames_FGA, CarmeloAnthony_FGA, DwightHoward_FGA, ChrisBosh_FGA, ChrisPaul_FGA, KevinDurant_FGA, DerrickRose_FGA, DwayneWade_FGA)
colnames(FieldGoalAttempts) <- Seasons
rownames(FieldGoalAttempts) <- Players

#Points
KobeBryant_PTS <- c(2832,2430,2323,2201,1970,2078,1616,2133,83,782)
JoeJohnson_PTS <- c(1653,1426,1779,1688,1619,1312,1129,1170,1245,1154)
LeBronJames_PTS <- c(2478,2132,2250,2304,2258,2111,1683,2036,2089,1743)
CarmeloAnthony_PTS <- c(2122,1881,1978,1504,1943,1970,1245,1920,2112,966)
DwightHoward_PTS <- c(1292,1443,1695,1624,1503,1784,1113,1296,1297,646)
ChrisBosh_PTS <- c(1572,1561,1496,1746,1678,1438,1025,1232,1281,928)
ChrisPaul_PTS <- c(1258,1104,1684,1781,841,1268,1189,1186,1185,1564)
KevinDurant_PTS <- c(903,903,1624,1871,2472,2161,1850,2280,2593,686)
DerrickRose_PTS <- c(597,597,597,1361,1619,2026,852,0,159,904)
DwayneWade_PTS <- c(2040,1397,1254,2386,2045,1941,1082,1463,1028,1331)
#Matrix
Points <- rbind(KobeBryant_PTS, JoeJohnson_PTS, LeBronJames_PTS, CarmeloAnthony_PTS, DwightHoward_PTS, ChrisBosh_PTS, ChrisPaul_PTS, KevinDurant_PTS, DerrickRose_PTS, DwayneWade_PTS)
rm(KobeBryant_PTS, JoeJohnson_PTS, LeBronJames_PTS, CarmeloAnthony_PTS, DwightHoward_PTS, ChrisBosh_PTS, ChrisPaul_PTS, KevinDurant_PTS, DerrickRose_PTS, DwayneWade_PTS)
colnames(Points) <- Seasons
rownames(Points) <- Players

#Matrix()
?matrix
my.data <- 1:20
my.data

A <- matrix(my.data, 4, 5)
A

B <- matrix(my.data, 4, 5, byrow=T)
B

#rbind()
r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1, 2, 3)
C <- rbind(r1, r2, r3)
C

#cbind
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D

Games
rownames(Games)
colnames(Games)
Games["LeBronJames","2012"]

FieldGoals

round(FieldGoals / Games,1)
round(MinutesPlayed / Games)

#Subsetting
Games
Games[1:3,6:10]
Games[c(1,10),]
Games[,c(4,5)]

Games[1,]
Games[1,,drop=F]
Games[1,5,drop=F]
Data <- MinutesPlayed[1:3,]
Data

matplot(t(Data), type="b", pch=15:18, col=c(1:4,6)) 
legend("bottomleft", inset=0.01, legend=Players[1:3], col=c(1:4,6), pch=15:18, horiz=F)

#create a function
myplot <- function(rows){
  Data <- Points[rows,,drop=F]
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6)) 
  legend("bottomleft", inset=0.01, legend=Players[1:3], col=c(1:4,6), pch=15:18, horiz=F)
}
myplot(1:9)

#Import a file manually
stats <- read.csv(file.choose())
summary(stats)

#---------------Basic Operations with a DF
stats[1:10,] #subsetting
is.data.frame(stats[1,]) #no need for drop=F (like with matrices)
is.data.frame(stats[,1])
is.data.frame(stats[,1,drop=F])
#multiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
#add column
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
#remove a column
stats$MyCalc <- NULL

#---------------Filtering Data Frames
filter <- stats$Internet.users < 2
stats[filter,]

stats[stats$Birth.rate < 40,]
stats[stats$Birth.rate < 40 & stats$Internet.users < 2,]
stats [stats$Income.Group == "High income",]
stats [stats$Country.Name == "Malta",]

#---------------qplot
library(ggplot2)
?qplot
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(3), colour=I("blue"))
qplot(data=stats, x=Internet.users, y=Birth.rate, geom="boxplot")

qplot(data=stats, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(3))

#Execute below code to generate three new vectors
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")
#(c) Kirill Eremenko, www.superdatascience.com

#---------------------Creating Data Frames
mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset,
                   Regions_2012_Dataset)
head(mydf)
#change column names
colnames(mydf) <- c("Country", "Code", "Region")
head(mydf)
rm(mydf)

mydf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset,
                   Region=Regions_2012_Dataset)
head(mydf)

#---------------------Merging Data Frames

head(stats)
head(mydf)

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
merged
head(merged)

merged$Country <- NULL
str(merged)
tail(merged)

library(ggplot2)
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(2))
#1. Shapes
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(2), shape=I(17))
#2. Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(2), shape=I(19),
      alpha=I(0.6))
#3. Title
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(2), shape=I(19),
      alpha=I(0.6), main="Birth Rate vs Internet Users")

#--------------------------------------

# Advanced Visualization With GGPlot2

#-----Factor


Movie_Ratings <- read.csv("~/Documents/Udemy_courses/R_Programming/Movie_Ratings.csv")
View(Movie_Ratings)

attach(Movie_Ratings)
head(Movie_Ratings)
colnames(Movie_Ratings) <- c("Film", "Genre", "CriticRating", "AudienceRating", "Budgetmillions", "Year")
colnames(Movie_Ratings) 
Movie_Ratings
head(Movie_Ratings)
str(Movie_Ratings)
summary(Movie_Ratings)

factor(Movie_Ratings$Year)
Movie_Ratings$Year <- factor(Movie_Ratings$Year)

summary (Movie_Ratings)

#----------- Aesthetics
library(ggplot2)
ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating))

#add geometry
ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

#add colour
ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating, colour=Genre)) + 
  geom_point()

#add size
ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating, 
                               colour=Genre, size=Budgetmillions)) + 
  geom_point()

#------------Plotting With Layers

p <- ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating, 
                                    colour=Genre, size=Budgetmillions))
#point
p + geom_point()

#lines
p + geom_line()

#multiple layers
p + geom_point() + geom_line()
p + geom_line() + geom_point()

#----------- Overriding Aesthetics

q <- ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating, 
                                       colour=Genre, size=Budgetmillions))
#add geom layer
q + geom_point()

#overriding aes
q + geom_point(aes(colour=Budgetmillions))
q + geom_point(aes(x=Budgetmillions)) + 
  xlab("Budget Millions $$$")

#reduce line size
q + geom_line(size=1) + geom_point()

#-----------Mapping vs Setting

r <- ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating))

#Add colour
#1 Mapping
r + geom_point(aes(colour=Genre)) 
#Setting
r + geom_point(colour="Darkblue")

#---------- Histograms and Density Charts

s <- ggplot(data=Movie_Ratings, aes(x=Budgetmillions))
s + geom_histogram(binwidth=10)

#add colour
s + geom_histogram(binwidth=10, aes(fill=Genre))
#add a border
s + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")

#density chart
s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre), position="stack")

library(ggplot2)
#-------- Layers
t <- ggplot(data=Movie_Ratings, aes(x=AudienceRating))
t
t + geom_histogram(binwidth=10,
                   fill="White", colour="Blue")
#or
t <- ggplot(data=Movie_Ratings)
t
t + geom_histogram(binwidth=10,
                   aes(x=AudienceRating),
                   fill="White", colour="Blue")

#--------------Statistical Transformations

u <- ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating,
                                    colour=Genre))
u + geom_point() + geom_smooth(fill=NA)

#boxplots
u <- ggplot(data=Movie_Ratings, aes(x=Genre, y=AudienceRating,
                                    colour=Genre))
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()
u + geom_boxplot(size=1.2) + geom_jitter()
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)

library(ggplot2)

#---------- Using Facets
v <- ggplot(data=Movie_Ratings, aes(x=Budgetmillions))
v + geom_histogram(binwidth=10, aes(fill=Genre),
                   colour="Black")

#facets
v + geom_histogram(binwidth=10, aes(fill=Genre),
                   colour="Black") + 
  facet_grid(Genre~., scales="free")

#scatterplotsÑ
w <- ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating,
                                    colour=Genre))
w + geom_point(size=3)

#facets
w + geom_point(size=3) +
  facet_grid(Genre~.)

w + geom_point(size=3) +
  facet_grid(.~Year)

w + geom_point(size=3) +
  facet_grid(Genre~Year)

w + geom_point(size=2) +
  geom_smooth() +
  facet_grid(Genre~Year)

w + geom_point(aes(size=Budgetmillions)) +
  geom_smooth() +
  facet_grid(Genre~Year)

#----------Coordinates

library(ggplot2)
m <- ggplot(data=Movie_Ratings, aes(x=CriticRating, y=AudienceRating,
                                    size=Budgetmillions,
                                    colour=Genre))
m + geom_point()

#limits
m + geom_point() +
  xlim(50,100) +
  ylim(50,100)

#zoom
n <- ggplot(data=Movie_Ratings, aes(x=Budgetmillions))
n + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") +
  coord_cartesian(ylim=c(0,50))

w + geom_point(aes(size=Budgetmillions)) +
  geom_smooth() +
  facet_grid(Genre~Year)
coord_cartesian(ylim=c(0,100))

library(ggplot2)

#----------- Theme

o <- ggplot(data=Movie_Ratings, aes(x=Budgetmillions))
h <- o + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")
h

#axes labels
h + 
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour="DarkGreen", size=30),
     axis.title.y = element_text(colour="Red", size=30),
     axis.text.x = element_text(size=20),
     axis.text.y = element_text(size=20))

#legend formatting
h + 
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour="DarkGreen", size=30),
        axis.title.y = element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1))
       
#title
h + 
  xlab("Money Axis") +
  ylab("Number of Movies") +
  ggtitle("Movie budget Distribution") +
  theme(axis.title.x = element_text(colour="DarkGreen", size=30),
        axis.title.y = element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        
        plot.title = element_text(colour="DarkBlue",
        size=40, 
        family = "Courier"))