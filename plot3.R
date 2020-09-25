data <- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[c(which(data$Date == "2007-02-01"), which(data$Date == "2007-02-02")),]

png(filename="plot3.png")
plot(data$Sub_metering_1, type = "s", ylab = "Energy sub metering",xlab = "", axes = FALSE, frame.plot = TRUE)
lines(data$Sub_metering_2, col = "red")
lines(data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, col= c("black","red","blue"))
days <- c("Thu","Fri","Sat")
d <- c(0,1500,2900) 
axis(1,at = d, labels = days)
axis(2,labels = TRUE)
dev.off()