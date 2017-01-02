# READ IN FILE AND SUBSET

dataFile <- "../household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# GENERATE PLOT

# CREATE PLOT 1

hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

# SAVE TO FILE
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()




