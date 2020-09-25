data <- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[c(which(data$Date == "2007-02-01"), which(data$Date == "2007-02-02")),]

png(filename="plot2.png")
plot(data$Global_active_power, type = "s", ylab = "Global Active Power (kilowatts)",xlab = "", axes = FALSE, frame.plot = TRUE)
days <- c("Thu","Fri","Sat")
d <- c(0,1500,2900) 
axis(1,at = d, labels = days)
axis(2,labels = TRUE)
dev.off()
