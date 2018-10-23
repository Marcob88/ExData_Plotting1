
# PLOT 1

setwd("D:/Users/109046/Documents/R/EDA")

my_data <- read.table("household_power_consumption.txt", header=T, sep=';', na.strings="?", stringsAsFactors=F, dec=".")
my_data <- subset(my_data, Date %in% c("1/2/2007","2/2/2007"))

#dev.off()
png("plot1.png", width=480, height=480)
hist(my_data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()

