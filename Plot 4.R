#PLOT 4
setwd("D:/Users/109046/Documents/R/EDA")

my_data <- read.table("household_power_consumption.txt", header=T, sep=';', na.strings="?", stringsAsFactors=F, dec=".")
my_data <- subset(my_data, Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(my_data$Date, my_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
my_data$Datetime <- as.POSIXct(datetime)

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(my_data$Global_active_power ~ my_data$Datetime, type="l", ylab="Global Active Power", xlab="")
plot(my_data$Voltage ~ my_data$Datetime, type="l", xlab="datetime", ylab="Voltage")

with(my_data, plot(Sub_metering_1~Datetime, type="l",
                   ylab="Energy sub metering", xlab=""))
lines(my_data$Sub_metering_2~my_data$Datetime,col='Red')
lines(my_data$Sub_metering_3~my_data$Datetime,col='Blue')


plot(my_data$Global_reactive_power ~ my_data$Datetime, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
