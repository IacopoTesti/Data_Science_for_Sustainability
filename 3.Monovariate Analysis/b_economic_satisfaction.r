# set barplot besides
par(mfrow= c(2,2))

# define frequence table for first barplot
freq<-table(giov$SITEC)
# first barplot
barplot(freq,main="Valutazione del livello di soddisfazione economica \n laureati e diplomati (ultimi 12 mesi)",
        legend=TRUE,args.legend=list(cex=0.60,x="topright"),adj=0.5,
        ylab="frequenze assolute",col=c("darkred", "red", "lightblue", "blue"),
        cex.main=0.8, las=1,cex.names = 0.6,cex.axis=0.7,cex.lab=0.6, ylim=c(0,2500), horiz=FALSE)

# define frequence table for second barplot
freq1<-table(giov$SITE)
# second barplot
barplot(freq1,names.arg = c("molto peggiorata", "un pò peggiorata", "quasi inalterata", "un pò migliorata",
                            "molto migliorata") ,
        main="Valutazione della situazione  economica familiare \n rispetto all'anno precedente",
        cex.main=0.8,las=2,ylab="frequenze assolute ",
        legend.text=c("molto peggiorata", "un pò peggiorata", "quasi inalterata", "un pò migliorata","molto migliorata"),
        args.legend=list(cex=0.60,x="topright"), cex.names = 0.65,col=c("darkred", "red", "yellow", "green", "darkgreen"),ylim=c(0,3500),cex.lab=0.6,cex.axis=0.7, horiz=FALSE)

# define frequence table for third barplot
freq2<-table(giov$RISEC)
# second barplot
barplot(freq2, names.arg = c("ass. insufficenti", "scarse", "adeguate", "ottime"),
        main="Valutazione delle risorse \n economiche familiari (ultimi 12 mesi)",cex.main=0.8,
        legend.text=c("assolutamente \n insufficenti","scarse","adeguate","ottime"),
        args.legend=list(cex=0.50,x="topright"), ylab="frequenze assolute",col=c("darkred", "darkorange", "green", "darkgreen"), las=1.5,cex.names = 0.6,las=1,cex.axis=0.7,cex.lab=0.6, ylim=c(0,3500), horiz=FALSE)
