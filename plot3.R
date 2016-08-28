### Assuming that you have the data file in your working directory ###
data <- read.table("./household_power_consumption.txt", header = T, sep = ";", stringsAsFactors = F, dec = ".")
data <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]
dateTime <- strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S") 
png("plot3.png", width = 480, height = 480)
plot(dateTime, as.numeric(subSetData$Sub_metering_1), type = "l", ylab = "Energy Submetering", xlab = "")
lines(dateTime, as.numeric(subSetData$Sub_metering_2), type = "l", col = "red")
lines(dateTime, as.numeric(subSetData$Sub_metering_3), type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2, col = c("black", "red", "blue"))
dev.off()