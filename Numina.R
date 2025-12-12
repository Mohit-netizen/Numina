#11-12-2025

##Data Visualization


gas_prices <- read.csv("D:/AI & CRP/Numina/gas_prices.RData")
head(gas_prices)
str(gas_prices)
library(readr)
gas_prices <- read_csv("gas_prices.RData")
head(gas_prices)
str(gas_prices)
View(gas_prices)
load("gas_prices.RData")
ls()
dev.off()  # closes current plotting device
windows(width=8, height=6)
plot(gas_prices$Price, type="l", main="Time-series", col="red", lwd=2)
gas_prices$Price <- as.numeric(as.character(gas_prices$Price))
summary(gas_prices$Price)
is.nan(0/10)
is.finite(1/0)
is.infinite(1/0)
is.infinite(-1/0)
is.finite(NaN)
is.na(NA)
dim(gas_prices)
head(gas_prices$Date)
class(gas_prices$Date) #If it says "Date", you’re good.
        #If it says "character" or "factor", you might need to convert it:
gas_prices$Date <- as.Date(gas_prices$Date, format="%m/%d/%Y")
sum(is.na(gas_prices$Date)) #If the result is 0, no missing dates.
                            #If >0, you have some NA values to handle.
anyDuplicated(gas_prices$Date)
range(gas_prices$Date) #full range 
which(is.na(gas_prices$Date))
all(is.na(gas_prices$Date))
sum(is.na(gas_prices$Date))
which(apply(gas_prices, 1, function(x) all(is.na(x)))) #Sometimes an entire row is blank:
is.infinite(gas_prices$Price)

par(mar=c(5, 4, 4, 2) + 0.1)  # bottom, left, top, right
plot(gas_prices$Date, gas_prices$Price, type="l")

plot(gas_prices$Date, gas_prices$Price, type="l",
     main="Gas Prices Over Time",
     xlab="Date", ylab="Price ($)",
     col="blue", lwd=2)

library(ggplot2)
ggplot(gas_prices, aes(x=Date, y=Price)) +
  geom_line() +
  theme_minimal()

str(gas_prices)
gas_prices$Price <- as.numeric(gas_prices$Price)

par(mar=c(5, 4, 4, 2) + 0.1)  # bottom, left, top, right
plot(gas_prices$Date, gas_prices$Price, type="l")

plot(
  gas_prices$Date,
  gas_prices$New.York.State.Average....gal.,
  type = "l",
  main = "New York State Average Gas Prices Over Time",
  xlab = "Price ($/gallon)",
  ylab = "Date",
  col = "blue",
  lwd = 2
)

plot(
  gas_prices$Date,
  gas_prices$Albany.Average....gal.,
  type = "l",
  col = "blue",
  ylim = range(
    gas_prices$Albany.Average....gal.,
    gas_prices$Buffalo.Average....gal.
  )
)

lines(gas_prices$Date, gas_prices$Buffalo.Average....gal., col = "red")

legend(
  "topright",
  legend = c("Albany", "Buffalo"),
  col = c("blue", "red"),
  lty = 1
)

colnames(gas_prices)
# [1] "Date" "GasPriceAtStationDowntown" "GasPriceAtStationUptown" "AverageMonthlyGasPrice"

colnames(gas_prices) <- sapply(strsplit(colnames(gas_prices), " "), function(x) paste(x[1:min(2, length(x))], collapse=" "))
#Explanation:(
#strsplit(colnames(gas_prices), " ") → splits each column name by spaces.
#x[1:min(2, length(x))] → takes the first two words only.
#paste(..., collapse=" ") → combines them back into a single string.
#sapply(... ) → applies this to all column names.)





















plot(gas_prices$Price, type="l", main="Time-series", col="red", lwd=2)





plot(gas_prices,type="l", main="Time-series",col="red" , lwd=2)

getwd()
a=3
b=5
a+b


library(car)
data=read.csv(s)
Salary_Data <- read_csv("D:/Artificial intelligence and concepts of R programming/R studio/Salary_Data.csv")

getwd()
setwd("c:/Users/Mohit/Documents/GitHub/Numina/")
getwd()
Data= read.csv("D:/AI & CRP/R S/Salary_Data.csv")
Data= read.csv("D:/AI & CRP/R S/Gasoline_Retail_Prices_Weekly_Average_by_Region__Beginning_January_2017.csv")


View(gas_prices)
View(Gasoline_Retail_Prices_Weekly_Average_by_Region__Beginning_January_2017)
dim(Data)



head(Data)
head(Data,10)
str(Data)
colnames(Data)
install.packages("skimr")   # if not already installed
library(skimr)

brief(Data)
library(skimr)
brief(Data)
skim(Data)
library(skimr)
skim(Data)
colnames(Data)[1]="Name"
colnames(Data)[1]
colnames(Data)[1]
colnames(Data)[1]="Subject"
colnames(Data)[1]
head(Data,10)
colnames(Data)[1]="Years Of Experience"
head(Data,10)
colnames(Data)[2:4]=c ("Title","ID","Agencyname")
set
getwd()
setwd("D:/AI & CRP/Numina/")
Data= read.csv("D:/AI & CRP/Numina/all data.RData")
getwd()
skim(Data)
library(readr)
Salary_Data <- read_csv("Salary_Data.csv")
View(Salary_Data)
Salary_Data[c("Title", "ID", "Agencyname")]
str(Salary_Data)
colnames(Salary_Data)[3:5] <- c("Title", "ID", "Agencyname")
ncol(Salary_Data)
colnames(Salary_Data)[3:5]
colnames(Salary_Data)[3:4] <- c("Title", "ID")
Salary_Data[c("Title", "ID", "Agencyname")] <- ""
Salary_Data[1,3]="Jai"


brief(Data)
skim(Data)
spec()
head(Data,10)
colnames(Salary_Data)[1]="Years Of Experience"
head(Data,10)
data=read.csv("Salary_Data.csv")

colnames(Data)[2]
colnames(Data)[2:4]=c ("Title","ID","Agencyname")
head(Data,10)
colnames(Data)
str(Data)
Data[c("Title", "ID", "Agencyname")] <- ""
str(Salary_Data)
str(Salary_Data)
Salary_Data[c("Title", "ID", "Agencyname")] <- ""
View(Salary_Data)

x=c(0, NA, 2, 3, 4, -0.5, 0.2)
x
levels(factor(x))
is.na(NA)
! is.na(NA)
x>2 & is.na()
x>2 & !is.na(x)
(x==0 | x==2) & !is.na(x)
(x==0 | x==2) & is.na(x)
(x==0 | x==2)
head(data)
Data= read.csv("D:/AI & CRP/R S/Salary_Data.csv")
colnames(Data)[2]
View(Data)
data_1=Data
View(Data)
View(data_1)
rm(Data1)
nrow(data_1)
ncol(data_1)
str(data_1)
brief(data_1)
spec(data_1)
skim(data_1)
col(data_1)
dim(data_1)
system("git remote -v")
data_1[1,3]="Jai"
View(Salary_Data)
Salary_Data[c("Title", "ID", "Agencyname")]
Salary_Data[2,3]="Sam"
Salary_Data[2,3]="Sam"

























