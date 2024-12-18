data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?", stringsAsFactors=FALSE)
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
subset_data <- subset(data, as.Date(data$Date, "%d/%m/%Y") >= "2007-02-01" & as.Date(data$Date, "%d/%m/%Y") <= "2007-02-02")
png("plot2.png", width=480, height=480)
plot(subset_data$DateTime, as.numeric(subset_data$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()