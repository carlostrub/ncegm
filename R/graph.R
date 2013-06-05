#generate raw data
system("../bin/ncegm > ../R/raw")

#read data
data <- read.fwf("raw",skip=9,widths=rep(26,5),col.names = c("a","V","c","aprime","d"))

#plot value function
plot(data$a,data$V,type="l")


# Save data files for use in tikz
write.table(cbind(data$a,data$V),file="V.data",quote=FALSE,row.names=FALSE,col.names=FALSE)
write.table(cbind(data$a,data$c),file="c.data",quote=FALSE,row.names=FALSE,col.names=FALSE)
write.table(cbind(data$a,data$d),file="d.data",quote=FALSE,row.names=FALSE,col.names=FALSE)
write.table(cbind(data$a,data$aprime),file="aprime.data",quote=FALSE,row.names=FALSE,col.names=FALSE)
