file_Dir_Name <- "C://Users//Dominic//ExData_Plotting1//household_power_consumption.txt"
dataUsed <- read.table(file_Dir_Name, header=T, sep=';', na.strings="?", 
                       stringsAsFactors=T, skipNul=T)

subDF = subset(dataUsed, as.Date(dataUsed$Date,"%d/%m/%Y") 
               == as.Date("01/02/2007","%d/%m/%Y") |
                 as.Date(dataUsed$Date,"%d/%m/%Y") 
               == as.Date("02/02/2007","%d/%m/%Y")
)

subDF$DateTime <- strptime(paste(subDF$Date, subDF$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png", width = 480, height = 480, units = "px")
colNames = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

plot(subDF$DateTime, subDF$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(subDF$DateTime, subDF$Sub_metering_2, type="l", col="red")
lines(subDF$DateTime, subDF$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=colNames)
dev.off()
