par(mfrow=c(1,1))
par(mar=c(4,4,2,2))
file=read.csv2("household_power_consumption.txt",stringsAsFactors=F)
file$Date=as.Date(file$Date,"%d/%m/%Y")
sub=file[file$Date %in% c(as.Date("2007/02/01"),as.Date("2007/02/02")),]
sub$Time=strptime(paste(sub$Date,sub$Time),"%Y-%m-%d %H:%M:%S")
hist(as.numeric(paste(sub$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",cex.axis=0.5,cex.lab=0.7,cex.main=0.8)
quartz.save("plot1.png")