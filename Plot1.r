
###GRAF 1
fileread <- file("household_power_consumption.txt")
filebase <- read.table(text = grep("^[1,2]/2/2007", readLines(fileread), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

# Saves Plot 1
par(mfrow = c(1,1), mar = c(4,4,2,1), oma = c(0,0,2,0))
hist(filebase$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")
dev.copy(png,'plot1.png',width=480, height=480)
dev.off()
