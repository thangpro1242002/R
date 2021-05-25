setwd('C:\\Users\\Admin\\Documents\\R')
methods(plot)
help(plot)
#Tham số - Ý nghĩa
#main   - thêm tiêu đề cho graph
#xlab, ylab - nhãn cột x, y
#log: log="x", log="y", log="xy"=> creates logaricthmic axes
#type="p"; "l", "b", "o", "h","s", "n"
#Cau 1:Tim hieu cac loai plot thong qua thong so Type
setwd("C:\\Users\\Admin\\Documents\\R")
BFDeaths <- read.table(file = "RIKZ2.txt", header = TRUE)
Benthic <- read.table(file = "RIKZ2.txt", header = TRUE)
Benthic$fBeach <- factor(Benthic$Beach)
plot(Benthic$Richness ~ Benthic$fBeach)
plot(Benthic$Richness ~ Benthic$fBeach, type = "o") #overplotted points and lines
plot(Benthic$Richness ~ Benthic$fBeach, type = "l") #lines
plot(Benthic$Richness ~ Benthic$fBeach, type = "b") #both points and lines
plot(Benthic$Richness ~ Benthic$fBeach, type = "h") #histogram-like vertical lines
plot(Benthic$Richness ~ Benthic$fBeach, type = "s") #stair steps
plot(Benthic$Richness ~ Benthic$fBeach, type = "n") #does not produce any points or lines
plot(Benthic$Richness ~ Benthic$fBeach, type = "p") #points

#Cau 2: Tim hieu mot so ham hay dung voi plot
#tim hieu y nghia cac ham duoi de 
#van dung ket hop vo ham plot de ve do thi
#plot.new
help(plot.new)  #create/ start a new plot frame
plot.new()
frame()
#win.graph
help(win.graph) #Windows Graphics Devices
#win.graph(width, height, pointsize)
win.graph(width = 7, height = 7, pointsize = 12)
plot(Benthic$Richness ~ Benthic$fBeach)
#windows
help(windows)
#windows(width, height, pointsize, record, rescale, xpinch, ypinch,
#bg, canvas, gamma, xpos, ypos, buffered, title,
#restoreConsole, clickToConfirm, fillOddEven,
#family, antialias)

#savePlot
help(savePlot) #Save Windows Plot to a File
#savePlot(filename = "Rplot",
#type = c("wmf", "emf", "png", "jpg", "jpeg", "bmp",
#"tif", "tiff", "ps", "eps", "pdf"),
#device = dev.cur(),
#restoreConsole = TRUE)

#locator
help(locator) #Graphical Input
#locator(n = 512, type = "n", ...)

#range
help(range) #Range of Values
#range(..., na.rm = FALSE, finite = FALSE)

#matplot 
help(matplot)  #Plot Columns of Matrices
#matplot(x, y, type = "p", lty = 1:5, lwd = 1, lend = par("lend"),
#pch = NULL,
#col = 1:6, cex = NULL, bg = NA,
#xlab = NULL, ylab = NULL, xlim = NULL, ylim = NULL,
#log = "", ..., add = FALSE, verbose = getOption("verbose"))

#persp
help(persp) #Perspective Plots
#persp(x = seq(0, 1, length.out = nrow(z)),
#y = seq(0, 1, length.out = ncol(z)),
#z, xlim = range(x), ylim = range(y),
#zlim = range(z, na.rm = TRUE),
#xlab = NULL, ylab = NULL, zlab = NULL,
#main = NULL, sub = NULL,
#theta = 0, phi = 15, r = sqrt(3), d = 1,
#scale = TRUE, expand = 1,
#col = "white", border = NULL, ltheta = -135, lphi = 0,
#shade = NA, box = TRUE, axes = TRUE, nticks = 5,
#ticktype = "simple", ...) 

#cut
help(cut) #Convert Numeric to Factor
#cut(x, breaks, labels = NULL,
#include.lowest = FALSE, right = TRUE, dig.lab = 3,
#ordered_result = FALSE, ...)

#split
help(split) #Divide into Groups and Reassemble
#split(x, f, drop = FALSE, sep = ".", lex.order = FALSE, ...)
#split(x, f, drop = FALSE, ...) <- value



