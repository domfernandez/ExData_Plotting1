# setwd("C://Users//Dominic//ExData_Plotting1//ExData_Plotting1")

file_Dir_Name <- "C://Users//Dominic//ExData_Plotting1//household_power_consumption.txt"
dataUsed <- read.table(file_Dir_Name, header=T, sep=';', na.strings="?", 
                       stringsAsFactors=T, skipNul=T)

subDF = subset(dataUsed, as.Date(dataUsed$Date,"%d/%m/%Y") 
                == as.Date("01/02/2007","%d/%m/%Y") |
                  as.Date(dataUsed$Date,"%d/%m/%Y") 
                == as.Date("02/02/2007","%d/%m/%Y")
              )

hist(subDF$Global_active_power, col = "red", xlab="Global Active Power (kilowatts)",
     main ="Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()
