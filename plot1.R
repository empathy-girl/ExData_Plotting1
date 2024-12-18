data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?", stringsAsFactors=FALSE)
data$Date <- as.Date(data$Date, "%d/%m/%Y")
subset_data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
png("plot1.png", width=480, height=480)
hist(as.numeric(subset_data$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()