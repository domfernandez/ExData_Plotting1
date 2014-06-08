
file_Dir_Name <- "C://Users//Dominic//ExData_Plotting1//household_power_consumption.txt"
dataUsed <- read.table(file_Dir_Name, header=T, sep=';', na.strings="?", 
                       stringsAsFactors=T, skipNul=T)

subDF = subset(dataUsed, as.Date(dataUsed$Date,"%d/%m/%Y") 
               == as.Date("01/02/2007","%d/%m/%Y") |
                 as.Date(dataUsed$Date,"%d/%m/%Y") 
               == as.Date("02/02/2007","%d/%m/%Y")
        )
subDF$DateTime <- strptime(paste(subDF$Date, subDF$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(subDF$DateTime, subDF$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
