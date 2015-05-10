par(mfrow=c(1,1))
par(mar=c(3,5,2,2))
file=read.csv2("household_power_consumption.txt",stringsAsFactors=F)
file$Date=as.Date(file$Date,"%d/%m/%Y")
sub=file[file$Date %in% c(as.Date("2007/02/01"),as.Date("2007/02/02")),]
sub$Time=strptime(paste(sub$Date,sub$Time),"%Y-%m-%d %H:%M:%S")
plot(sub$Time,as.numeric(sub$Global_active_power),type="l",ylab="Global Active Power (kilowatts)",cex.lab=0.8,cex.axis=0.7)
quartz.save("plot2.png")