##Plot3.png
plot(x_axis, data$Sub_metering_1, xlab = "", ylab = "Global active power (kilowatt)",type = "l")
lines(x_axis, data$Sub_metering_2, col = "red")
lines(x_axis, data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, cex = 0.5)