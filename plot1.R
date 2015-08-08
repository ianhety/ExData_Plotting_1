# plot1.R for Global Active Power

# please set your directory first

# Get data from 1/2/20017(row66638) to 2/2/2007(row69517)
data1 <- read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")[66638:69517,]

# Plot the hist and save
png(file="plot1.png",height=480,width=480)
hist(data1$Global_active_power,main="Global Active Power",xlab="Global Active Power(KILOWATTS)",ylab="Frequency",col="red")
dev.off
