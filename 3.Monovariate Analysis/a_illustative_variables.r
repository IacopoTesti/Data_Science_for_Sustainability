# Piechart 1
par(mfcol=c(1,3))
pct<-round(table(na.omit(giov$ISTRMi))/length(giov$ISTRMi)*100,2)
et<-paste("",pct,"%",sep=" ")
pie(pct,labels=et,main="laureati/diplomati",
    cex.main=2.0,  col=c("red","blue"))
legend(
  x=-0.8,y=1.4,
  legend = c("Laureati","Diplomati"),
  fill = c("red","blue"),
  bg = "white",cex=0.7
)

# Piechart 2
pct1<-round(table(na.omit(giov[giov$ISTRMi != "diplomato",1:12]$SESSO))/length(giov[giov$ISTRMi != "diplomato",1:12]$SESSO)*100,2)
et<-paste("",pct1,"%",sep=" ")
pie(pct1,labels=et,main="sesso(laureati)",
    cex.main=2.0,  col=c("blue","pink"))
legend(
  x=-0.8,y=1.4,
  legend = c("Maschi","Femmine"),
  fill = c("blue","pink"),
  bg = "white",cex=0.7
)

# Piechart 3
pct2<-round(table(na.omit(giov[giov$ISTRMi != "laureato",1:12]$SESSO))/length(giov[giov$ISTRMi != "laureato",1:12]$SESSO)*100,2)
et<-paste("",pct2,"%",sep=" ")
pie(pct2,labels=et,main="sesso(diplomati)",
    cex.main=2.0,  col=c("blue","pink"))
legend(x=+0.2,y=1.4,
  legend = c("Maschi","Femmine"),
  fill = c("blue","pink"),
  bg = "white",cex=0.7
)

# Barplot 
barplot(table(giov_laur_ita$REGMF), main="Regione di residenza laureati \n (giovani [20-34 anni] italiani laureati)", col=c("black"),cex.names=0.6, cex.axis=0.7, cex.main=0.7, las=1, xlim=c(0,160), horiz=T)
