airquality
#histogram & density
hist(airquality$Wind,
     breaks = (0:7)*3,
     probability = TRUE,
     xlab = "Wind",
     main = "Histogram + Desnity Curve",
     col = "pink", 
     border = "black"
)
dens <- density(airquality$Wind)
lines(dens, col = "blue", lwd = 2)

#boxplot
boxplot(airquality, horiz = TRUE, 
        main = "Boxplot airquality",
        col = "lightblue",
        xlab = "Airquality")


boxplot(airquality$Wind, horiz = TRUE, 
        main = "Boxplot Wind",
        col = "maroon",
        xlab = "Wind")

boxplot(airquality$Ozone, horiz = TRUE, 
        main = "Boxplot Ozone",
        col = "brown",
        xlab = "Ozone")

boxplot(airquality$Solar.R, horiz = TRUE, 
        main = "Boxplot Solar.R",
        col = "magenta1",
        xlab = "Solar.R")

# steam and leaf Plot
stem(airquality$Wind)
stem(airquality$Ozone)
stem(airquality$Solar.R)
stem(airquality$Temp)
stem(airquality$Month)
stem(airquality$Day)

#Scatter plot
plot(airquality$Ozone, airquality$Temp, 
     pch = 16, pty= "s",
     main = "Scatterplot Ozone & Temp",
     xlab = "Temp", 
     ylab = "Ozone")
rug(airquality$Ozone)             
rug(airquality$Temp, side = 2)
abline(0, 1, col = "red", lwd = 2)

