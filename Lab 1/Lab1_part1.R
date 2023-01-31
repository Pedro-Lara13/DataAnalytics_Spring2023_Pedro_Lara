help(data)
Sum_info <- read.csv(file.choose(), header = TRUE)
EPI_data <- read.csv("C:/Users/larap/Downloads/EPI2010_data.csv")
View(EPI_data) #need to change first row to be header, look at Lecture from January 17th
attach(EPI_data)
fix(EPI_data)
EPI
tf <- is.na(EPI)
E <- EPI[!tf]

summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob = TRUE)
lines(density(EPI, na.rm = TRUE, bw = 1.))
rug(EPI)

plot(ecdf(EPI), do.points = FALSE, verticals = TRUE)
par(pty = "s")
qqnorm(EPI) ;qqline(EPI)
x <- seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q Plot for tdsn")
qqline(x)

#Use code above as a guideline for rest of the lab

plot(ecdf(DALY), do.points = FALSE, verticals = TRUE)
qqnorm(DALY) ;qqline(DALY)

plot(ecdf(AIR_E), do.points = FALSE, verticals = TRUE)
qqnorm(AIR_E) ;qqline(AIR_E)

boxplot(EPI, AIR_E)
boxplot(AIR_E, DALY)

qqplot(EPI, AIR_E) 
qqplot(AIR_E, DALY)

