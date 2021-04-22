



# =======SWEET DATA=========
# Reading data
dataframe <- read.csv('Habib.csv')

# Viewing data
head(dataframe)
View(dataframe)

#Cleaning dataframe
dataframe <- dataframe %>%
  str_replace_all(" ", "")

# Selecting Department type column
dp <- dataframe$DepartmentType

# Piping dp dataframe and replacing spaces between text with "_"
dp <- dp %>%
  str_replace_all(" ", "_")

# Creating new column and assigning to trimmed column
dataframe$Dept = dp

# Renaming rows of dataframe as Xi, i= 1,...,n
row_names <- paste("X", 1:30, sep = "")
rownames(Emergency) <- row_names  

# Filetring and assigning emergency dataframe
Emergencies <- dataframe[which(dataframe$Dept == "Emergency_Department"),]
#This filtering works without trimming the data
Emergency <- dataframe[which(dataframe$DepartmentType == "Emergency Department"),]

# Finding the point estimate
Average_Attendance = Emergency$NumberOfAttendances
Point_Estimate <- mean(Average_Attendance, na.rm=TRUE)

# Stating the distribution of 1st attendance in NumberOfAttendances 
XX1 = Emergency$NumberOfAttendances[1]
Standard_Deviation <- sd(Average_Attendance, na.rm=TRUE)
Distribution <- pnorm(XX1, Point_Estimate, Standard_Deviation)

# Calculating the confidence interval
n <- 1000
error <- qnorm(0.975) * Standard_Deviation/sqrt(n)
Lower_Interval <- Point_Estimate - error
Upper_Interval <- Point_Estimate + error


# viewing coding on the fly
colnames(dataframe)
View(Emergency)
View(dataframe)
View(Upper_Interval)







# ========SOUR DATA==========

library(stringr)
library(dplyr)
library(IAT)

install.packages('dplyr')


#Renaming the column
names(dp) <- c("DeptType")
names(dp)[1] <- "DeptType"
colnames(dp)

head(dp)
DepartmentType[E] = Emergency
column[data]<-replacementdata
library(ren)
??rename
dt <- rename(dataframe, c(DepartmentType="DeptType"))
install.packages('IAT')

Emergency.iat[0,0]

dpt <- paste("col", 3, sep = "")
# Replacing the name of column 3

dataframe[c("DeptType")] <- c(dataframe$Dept)

names(dataframe[3]) <- dpt
head(dataframe)


library(reprex)
library(dplyr)
