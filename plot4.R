d <- read.csv("epc-data.csv", sep=';', head=T)

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

d$datetime <- strptime(paste(d$Date, d$Time), "%d/%m/%Y %H:%M:%S")

plot(d$datetime, d$Global_active_power, type="n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(d$datetime, d$Global_active_power, type = "l")


plot(d$datetime, d$Voltage, type="n", xlab = "", ylab = "Voltage")
lines(d$datetime, d$Voltage, type = "l")

#
#

plot(d$datetime, d$Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering")
lines(d$datetime, d$Sub_metering_1, type = "l", col="black")
lines(d$datetime, d$Sub_metering_2, type = "l", col="red")
lines(d$datetime, d$Sub_metering_3, type = "l", col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, col = c("black","red","blue"))

plot(d$datetime, d$Global_reactive_power, type="n", xlab = "", ylab = "Global_reactive_power")
lines(d$datetime, d$Global_reactive_power, type = "l")

dev.off()

