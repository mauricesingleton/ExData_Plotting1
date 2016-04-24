
## Reuse code to get the data for the plots
source("GetData.R")
powsub <- getdata()

## Plot 1 - Global Active Power histogram
png(filename="plot1.png", width=480, height=480)
hist(powsub$Global_active_power, breaks=12, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()

