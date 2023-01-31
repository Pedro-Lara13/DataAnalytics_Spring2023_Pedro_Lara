EPI_data <- read.csv("C:/Users/larap/Downloads/EPI2010_data.csv")
View(EPI_data) #need to change first row to be header, look at Lecture from January 17th

names(EPI_data) <- as.matrix(EPI_data[1,])
EPI_data <- EPI_data[-1,]
EPI_data[] <- lapply(EPI_data, function(x)type.convert(as.character(x)))
EPI_data
View(EPI_data)

attach(EPI_data)
fix(EPI_data)
EPI
tf <- is.na(EPI)
E <- EPI[!tf]

plot(ecdf(EPI), do.points = FALSE,verticals = TRUE)
plot(ecdf(EPI), do.points = TRUE, verticals = TRUE) # points are visible on the plot
par(pty="s")
help("qqnorm") #RStudio documentation for qqnorm
help("qqplot") #RStudio documentation for qqplot
qqnorm(EPI)
qqline(EPI) # adding the line on the Q-Q plot
x <- seq(30,95,1)
x
x2 <- seq(30,95,2)
x2
x2 <- seq(30,96,2)
x2
qqplot(qt(ppoints(250), df = 5), x, xlab = "$Q-Q Plot")
qqline(x)
