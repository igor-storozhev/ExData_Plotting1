#
# I have made subset of interesting data with the following unix commands:
#
#  1. head -1 household_power_consumption.txt > epc-data.csv 
#  2. grep '^[12]/2/2007' household_power_consumption.txt >> epc-data.csv
#
#  So my data in epc-data.csv starts from 1/2/2007 and ends 2/2/2007.

# Read data

d <- read.csv("epc-data.csv", sep=';', head=T)

png(filename = "plot3.png", width = 480, height = 480)

d$datetime <- strptime(paste(d$Date, d$Time), "%d/%m/%Y %H:%M:%S")


plot(d$datetime, d$Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering")
lines(d$datetime, d$Sub_metering_1, type = "l", col="black")
lines(d$datetime, d$Sub_metering_2, type = "l", col="red")
lines(d$datetime, d$Sub_metering_3, type = "l", col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, col = c("black","red","blue"))

dev.off()

