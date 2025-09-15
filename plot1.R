##download and unzip the file
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
temp_zip <- tempfile(fileext = ".zip")
download.file(url, temp_zip, mode = "wb")
unzipped <- unzip(temp_zip)
electric <- read.table(unzipped, header = TRUE, sep = ";",dec = ".", na.strings = "?")
unlink(temp_zip)
head(electric)
str(electric)
names(electric)

## subset from the dates 2007-02-01 to 2007-02-02
data <- electric[electric$Date %in% c("1/2/2007", "2/2/2007"), ]

##Plot1.R
hist(data[, 3], col = "red", main = "Global Active Power", xlab = "Global Active powers (kilowatts)")
