
## Reuse code to get the data for the plots
source("GetData.R")
powsub <- getdata()


## Plot 4
png(filename="plot4.png", width=480, height=480)

par(mfrow=c(2,2))
plot(powsub$DateTime,powsub$Global_active_power, type="l", xlab="Day", ylab="Global Active Power (kilowatts)")
plot(powsub$DateTime,powsub$Voltage, type="l", xlab="Day", ylab="Voltage")

plot(powsub$DateTime, powsub$Sub_metering_1, type="l", xlab="Day", ylab="Energy Sub Metering")
points(powsub$DateTime, powsub$Sub_metering_2, type="l",  col="red")
points(powsub$DateTime, powsub$Sub_metering_3, type="l",  col="blue")
legend("topright", col=c("black","red","blue"), lwd=1, legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(powsub$DateTime,powsub$Global_reactive_power, type="l", xlab="Day", ylab="Global Reactive Power (kilowatts)")

dev.off()
