#
# I have made subset of interesting data with the following unix commands:
#
#  1. head -1 household_power_consumption.txt > epc-data.csv 
#  2. grep '^[12]/2/2007' household_power_consumption.txt >> epc-data.csv
#
#  So my data in epc-data.csv starts from 1/2/2007 and ends 2/2/2007.

# Read data

d <- read.csv("epc-data.csv", sep=';', head=T)

png(filename = "plot2.png", width = 480, height = 480)


d$datetime <- strptime(paste(d$Date, d$Time), "%d/%m/%Y %H:%M:%S")

plot(d$datetime, d$Global_active_power, type="n", xlab = "", ylab = "Global Active Power (kilowatts)")

lines(d$datetime, d$Global_active_power, type = "l")

dev.off()

