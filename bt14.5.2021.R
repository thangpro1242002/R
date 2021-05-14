setwd('C:\\Users\\Admin\\Documents\\R')
Benthic = read.table('RIKZ.txt',header = TRUE)
names(Benthic)
str(Benthic)
#Bien Species(loai) tu cot thu 2 den 76 trong Benthic
Species = Benthic[,2:76]
names(Species)
#Kiem tra dimensios -chieu cua bien Species
n = dim(Species)
n
#45 dong tuong ung voi 45 sites-vi tri thu thap mau vat
#tuong ung vs moi vi tri thi se ghi nhan dc nhung loai
#co bao nhieu loai sv bien o vi tri so 1
sum(Species[1,], na.rm=TRUE)
#ket qua 143 loai sv bien xuat hien o site #1
sum(Species[2,], na.rm=TRUE)
#ket qua 52 loai sv bien xuat hien o site #2.....
#xuat hien tai cac sites
TA = vector(length = n[1])
for (i in 1:n[1]){
  TA[i]=sum(Species[i,],na.rm=TRUE)
}
TA
#Ham rowSums tinh tong cac cot trong ham
#na.rm =TRUE loai bo cac gia tri rong
TA02 = rowSums(Species,na.rm=TRUE)
TA02
#di vao chi tiet tung vi tri quan sat
sum(Species[1,]>0,na.rm=TRUE)
#ket qua chung ta co 11 loai khac nhau xuat hien tai vi tri 1
Richness = vector(length = n[1])
for (i in 1:n[1]){
  Richness[i]=sum(Species[i,]>0,na.rm=TRUE)
}
Richness
Richness02=rowSums(Species>0,na.rm=TRUE)
Richness02
#chi so da dang loai
#H=sum chay ru i -> m cua bien p: xac suat*log10 p
RS = rowSums(Species,na.rm =TRUE)
prop=Species/RS
H = -rowSums(prop*log10(prop),na.rm=TRUE)
H
#Ket hop lai lam 1 ham
#sau nay su dung lai de pt du lieu tuong tu
Choice ="Richness"
if (Choice=="Richness"){
  Index = rowSums(Species>0, na.rm = TRUE)
}
if (Choice =="Totol Abundance"){
  Index = rowSums(Species,na.rm=TRUE)
}
if (Choice=="Shannon"){
  RS = rowSums(Species,na.rm =TRUE)
  prop=Species/RS
  Index = -rowSums(prop*log10(prop),na.rm=TRUE)
}
TA02 = rowSums(Species,na.rm=TRUE)
Richness02=rowSums(Species>0,na.rm=TRUE)
RS = rowSums(Species,na.rm =TRUE)
prop=Species/RS
H = -rowSums(prop*log10(prop),na.rm=TRUE)
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