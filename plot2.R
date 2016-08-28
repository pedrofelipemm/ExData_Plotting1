### Assuming that you have the data file in your working directory ###
data <- read.table("./household_power_consumption.txt", header = T, sep = ";", stringsAsFactors = F, dec = ".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dateTime <- strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width = 480, height = 480)
plot(dateTime, as.numeric(subSetData$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()