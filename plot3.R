
## Reuse code to get the data for the plots
source("GetData.R")
powsub <- getdata()

## Plot 3
png(filename="plot3.png", width=480, height=480)
plot(powsub$DateTime, powsub$Sub_metering_1, type="l", xlab="Day", ylab="Energy Sub Metering")
points(powsub$DateTime, powsub$Sub_metering_2, type="l",  col="red")
points(powsub$DateTime, powsub$Sub_metering_3, type="l",  col="blue")

legend("topright", col=c("black","red","blue"), lwd=1, legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

