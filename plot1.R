data <- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[c(which(data$Date == "2007-02-01"), which(data$Date == "2007-02-02")),]

png(filename="plot1.png")
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency",col = "red")
dev.off()
