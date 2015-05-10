# Read data
d <- read.csv("epc-data.csv", sep=';', head=T)

png(filename = "plot1.png", width = 480, height = 480)

# make histogram
hist(d$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)" )

dev.off()
