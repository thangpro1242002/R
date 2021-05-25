#7.6 PairPlot
setwd("C:\\Users\\Document\\R")
Benthic <-read.table(file="RIKZ2.txt", header=TRUE)
pairs(Benthic[,2:9])


pairs(Benthic[,2:9], 
      diag.panel = panel.hist,
      upper.panel = panel.smooth,
      lower.panel = panel.cor
)
help(pairs)


example(pairs) 


pairs> pairs(USJudgeRatings, 
             lower.panel = panel.smooth, 
             upper.panel = panel.cor,
             pairs+       gap=0, 
             row1attop=FALSE)






#Hàm Coplot


coplot(Richness ~ NAP | as.factor(Beach),
       pch=19, data=Benthic)
coplot(Richness ~ NAP | grainsize,
       pch=19, data=Benthic)






panel.lm= function(x,y,...){
  tmp <- lm(y~x, na.action = na.omit)
  abline(tmp)
  points(x, y,...)
}
coplot(Richness ~ NAP | as.factor(Beach),
       pch=19, panel=panel.lm, data=Benthic)
