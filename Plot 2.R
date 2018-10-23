#PLOT 2
setwd("D:/Users/109046/Documents/R/EDA")

my_data <- read.table("household_power_consumption.txt", header=T, sep=';', na.strings="?", stringsAsFactors=F, dec=".")
my_data <- subset(my_data, Date %in% c("1/2/2007","2/2/2007"))

my_data$Date <- as.Date(my_data$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(my_data$Date), my_data$Time)
my_data$Datetime <- as.POSIXct(datetime)

png("plot2.png", width=480, height=480)
with(my_data, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")})
dev.off()


