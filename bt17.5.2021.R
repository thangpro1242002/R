setwd('C:\\Users\\Admin\\Documents\\R')
veg = read.table('Vegetation2.txt', header = TRUE)
names(veg)
str(veg)
#Bien Species tu cot 5 den 9
Species = veg[,5:9]
names(Species)
#Kiem tra dimensios chieu dai cua bien Species
n = dim(Species)
n
sum(Species[1,], na.rm = TRUE)
sum(Species[2,], na.rm = TRUE)
TA = vector(length = n[1])
for (i in 1:n[1]){
  TA[i] = sum(Species[i,], na.rm = TRUE)
}
TA
#Ham rowSums: tinh toan tong cua cac cot o trong hang
# tham so na.rm = TRUE => loai bo cac gia tri rong
TA02 = rowSums(Species, na.rm = TRUE)
TA02
#Di vao chi tiet tai tung vi tri quan sat
sum(Species[1,]>0,na.rm=TRUE)
Richness = vector(length = n[1])
for (i in 1:n[1]){
  Richness[i] = sum(Species[i,]>0, na.rm = TRUE)
}
Richness
Richness02 = rowSums(Species>0, na.rm = TRUE)
Richness02
#chi so da dang loai
RS = rowSums(Species, na.rm = TRUE)
prop = Species/RS
H = -rowSums(prop*log10(prop), na.rm = TRUE)
H
#Ket hop lai lam 1 ham
Index.function <-function(Spec, Choice){
  if (Choice=="Richness") {
    Index <- rowSums(Species>0, na.rm = TRUE)
  }
  if (Choice=="Total Abundance") {
    Index <- rowSums(Species, na.rm = TRUE)
  }
  if (Choice=="Shannon") {
    RS <- rowSums(Species, na.rm=TRUE)
    prop <- Species / RS
    Index <- -rowSums(prop * log10(prop), na.rm= TRUE)
  }
  list(Index=Index, MyChoice= Choice)
}
Index.function(Species,"Shannon")
Index.function(Species,"Total Abundance")
Index.function(Species,"Richness")