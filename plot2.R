# Plot2 code
# read the complete data from 1/2/20017 to 2/2/2007 
data1 <- read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")[66638:69517,]

# change the time format!
data1$DateTime <- strptime(paste(data1$Date,data1$Time,sep=" "), format="%d/%m/%Y %H:%M:%S")

# Plot the PICTURE and save
png(file="plot2.png",height=480,width=480)
with(data1,plot(DateTime, Global_active_power,xlab="",ylab="Global Active Power(KILOWATTS)",type="l",col="black"))
dev.off