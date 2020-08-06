# define barplots besides
par(mfrow= c(2,2))

# first barplot
barplot(table(giov$RELFAM), main="Soddisfazione per le relazioni familiari \n negli ultimi 12 mesi",
        legend=TRUE,args.legend=list(cex=0.60,x="topleft"),
        ylab="frequenze assolute",col=c("darkred", "red", "lightblue", "blue"),adj=0.5,
        cex.main=0.8, las=1,cex.names = 0.6,cex.axis=0.7,cex.lab=0.7,ylim=c(0,3000), horiz=FALSE) 

# second barplot
barplot(table(giov$RELAM), main="Soddisfazione per le relazioni con amici \n negli ultimi 12 mesi",
        legend=TRUE,args.legend=list(cex=0.60,x="topleft"),
        ylab="frequenze assolute",col=c("darkred", "red", "lightblue", "blue"),
       cex.main=0.8, las=1,cex.names = 0.6,cex.axis=0.7,cex.lab=0.7,ylim=c(0,3000), horiz=FALSE)

# third barplot
barplot(table(giov$TEMLIB), main="Soddisfazione per il tempo libero \n negli ultimi 12 mesi",
        legend=TRUE,args.legend=list(cex=0.60,x="topleft"),
        ylab="frequenze assolute",col=c("darkred", "red", "lightblue", "blue"),
        cex.main=0.8, las=1,cex.names = 0.6,cex.axis=0.7,cex.lab=0.7,ylim=c(0,3000), horiz=FALSE)

# fourth barplot
barplot(table(giov$FUTUASP), main="Prospettiva situazione personale \n nei prossimi 5 anni",
        legend=TRUE,args.legend=list(cex=0.50,x="topleft"),
        ylab="frequenze assolute",col=c("gray","red","yellow","green"),
        cex.main=0.8, las=1.5,cex.names = 0.6 ,cex.axis=0.7,cex.lab=0.7,ylim=c(0,3000), horiz=FALSE)
