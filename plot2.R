data <- read.table("C:/Users/maurya/Downloads/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
samp <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(samp$Date, samp$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(samp$Global_active_power)

png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
