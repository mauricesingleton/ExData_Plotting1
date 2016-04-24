
## Reuse code to get the data for the plots
source("GetData.R")
powsub <- getdata()

## Plot 2
png(filename="plot2.png", width=480, height=480)
plot(powsub$DateTime,powsub$Global_active_power, type="l", xlab="Day", ylab="Global Active Power (kilowatts)")
dev.off()

