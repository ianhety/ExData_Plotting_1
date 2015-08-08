# Plot3 code
# read the complete data from 1/2/20017 to 2/2/2007 
data1 <- read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")[66638:69517,]

# change the time format!
data1$DateTime <- strptime(paste(data1$Date,data1$Time,sep=" "), format="%d/%m/%Y %H:%M:%S")

#plot
png(file="plot4.png",height=480,width=480)
par(mfrow=c(2,2))
# 1,1
with(data1,plot(DateTime, Global_active_power,xlab="",ylab="Global Active Power",type="l",col="black"))
# 1,2
with(data1,plot(DateTime, Voltage,xlab="datetime",ylab="Voltage",type="l",col="black"))
# 2,1
with(data1,plot(DateTime,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",col="black"))
with(data1,points(DateTime,Sub_metering_2,type="l",col="red"))
with(data1,points(DateTime,Sub_metering_3,type="l",col="blue"))
legend("topright",lty=1,cex=0.5,legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),col=c("black","red","blue"))
#2,2
with(data1,plot(DateTime, Global_reactive_power,xlab="datetime",ylab="Global Active Power",type="l",col="black"))
dev.off()
