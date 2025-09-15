##Plot4.png
par(mfrow = c(2,2), mar = c(2, 2, 2, 2))
##1
plot(data$Global_active_power ~ x_axis, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l",)
axis.Date(1, format = "%A")
##2
plot(data[, 5] ~ x_axis, xlab = "datetime", ylab = "Voltage", type = "l")
##3
plot(x_axis, data$Sub_metering_1, xlab = "", ylab = "Global active power (kilowatt)",type = "l")
lines(x_axis, data$Sub_metering_2, col = "red")
lines(x_axis, data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, cex = 0.5)
##4
with(data, plot(Global_reactive_power ~ x_axis, type = "l", xlab = ""))