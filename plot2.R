d <- read.csv("epc-data.csv", sep=';', head=T)

png(filename = "plot2.png", width = 480, height = 480)


d$datetime <- strptime(paste(d$Date, d$Time), "%d/%m/%Y %H:%M:%S")

plot(d$datetime, d$Global_active_power, type="n", xlab = "", ylab = "Global Active Power (kilowatts)")

lines(d$datetime, d$Global_active_power, type = "l")
