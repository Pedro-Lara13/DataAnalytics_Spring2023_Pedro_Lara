#Creating a data frame
#Example: RPI Weather data frame

days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun') # days
temp <- c(28, 30.5, 32, 31.2, 29.3, 27.9, 26.4) #Temperature in F during Winter
snowed <- c('T','T','F','F','T','T','T') #Snowed on that day
class(snowed)
help("data.frame")
RPI_Weather_Week <- data.frame(days, temp, snowed, stringsAsFactors = T) #creating the data frame

emptyDataFrame <- data.frame()
emptyDataFrame

RPI_Weather_Week
head(RPI_Weather_Week) #Head of the data frame, NOTE: it will only show 6 rows
#Usually head() function shows the first 6 rows of the data frame
#Here we only have 7 rows in our data frame
head(RPI_Weather_Week,7) #Can add desired amount of rows by adding number like so

str(RPI_Weather_Week) #Can take a look at the structure of the data frame

summary(RPI_Weather_Week) #summary of the data frame

RPI_Weather_Week[1,] #Showed the first row and all columns
RPI_Weather_Week[,1] #Showing the first column and all rows

RPI_Weather_Week[,'snowed']
RPI_Weather_Week[,'days']
RPI_Weather_Week[,'temp']
RPI_Weather_Week[1:5, c("days", "temp")]
RPI_Weather_Week$temp
subset(RPI_Weather_Week,subset=snowed==TRUE)

sorted.snowed <- order(RPI_Weather_Week['temp'])
