setwd('C:\\Users\\Admin\\Documents')
Owls = read.table(file="owls.txt",header=TRUE)
names(Owls)
str(Owls)
unique(Owls$Nest)

Allnests = unique(Owls$Nest)
for (i in 1:length(Allnests)){
  Nest.i = Allnests[i]
  Owls.i = Owls[Owls$Nest == Nest.i,]
  YourFileName = paste(Nest.i,".jpg",sep = "")
  jpeg(file = YourFileName)
  plot(x = Owls.i$SiblingNegotiation, y = Owls.i$ArrivalTime,
       xlab = "SiblingNegotiation",
       main = Nest.i,
       ylab = "ArrivalTime"
  )
  dev.off()
}

ifelse(Owls$FoodTreatment == "Satiated", Owls$NestNight <- paste(Owls$ï..Nest, "1",sep = ""), Owls$NestNight <- paste(Owls$ï..Nest, "2",sep = ""))
Owls