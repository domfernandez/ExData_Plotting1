fileName <- "./household_power_consumption.txt"
dataUsed <- read.table(fileName, header=T, sep=';', na.strings="?", skipNul=T)
sub.df = subset(dataUsed, as.Date(dataUsed$Date,"%d/%m/%Y") 
                == as.Date("01/02/2007","%d/%m/%Y") |
                  as.Date(dataUsed$Date,"%d/%m/%Y") 
                == as.Date("02/02/2007","%d/%m/%Y")
)
