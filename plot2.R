##Plot2.R
date_conv <- as.Date(data[, 1], format = "%d/%m/%Y")
time_conv <- strptime(data[, 2], format = "%H:%M:%S")
x_axis <- as.POSIXct(paste(date_conv, data[, 2]))

plot(data$Global_active_power ~ x_axis, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l",)