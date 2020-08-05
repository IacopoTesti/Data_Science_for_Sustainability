# read data 
AVQ_Microdati_2018 <- read.delim("AVQ_Microdati_2018.txt")

# Define young italian graduates (also with diploma)
giov<- AVQ_Microdati_2018[AVQ_Microdati_2018$REGMF >= 10 &
                                     AVQ_Microdati_2018$REGMF <= 200 &
                                     AVQ_Microdati_2018$ETAMi >= 8 &
                                     AVQ_Microdati_2018$ETAMi <= 9 &
                                     AVQ_Microdati_2018$ISTRMi >= 1 &
                                     AVQ_Microdati_2018$ISTRMi <= 7 &
                                     AVQ_Microdati_2018$CITTMi == 1 
                                   ,c(6,7,11,20,21,317,689:690,319:321,453)]

# Transform variables in factors
for (i in 1:length(giov))
  giov[[i]]<-as.factor(giov[[i]])

# Label all illustrative variables
levels(giov$ETAMi) <-c("20-24", "25-34")
levels(giov$SESSO) <-c("maschio", "femmina")
levels(giov$ISTRMi) <-c("laureato","diplomato")
levels(giov$REGMF) <-c("piemonte","valleAosta","lombardia","trentino",
                                "veneto","friuli","liguria","emiliaRomagna","toscana",
                                "umbria","marche","lazio","abruzzo","molise","campania",
                                "puglia","basilicata","calabria","sicilia","sardegna")
levels(giov$RIPMF)<-c("nord-ovest","nord-est","centro", "sud", "isole",
                               "non disp")

# Label all active variables
levels(giov$SITEC)<-c("molto", "abbastanza", "poco", "per niente")
giov$SITEC<-factor(giov$SITEC, order=TRUE,
                            levels=c("per niente", "poco","abbastanza", "molto"))
levels(giov$SITE)<-c("molto migliorata", "un pò migliorata",
                              "quasi inalterata", "un pò peggiorata","molto peggiorata")
giov$SITE<-factor(giov$SITE, order=TRUE,
                           levels=c("molto peggiorata", "un pò peggiorata",
                                    "quasi inalterata", "un pò migliorata",
                                    "molto migliorata"))
levels(giov$RISEC)<-c("ottime", "adeguate", "scarse", "assolutamente insufficenti")
giov$RISEC<-factor(giov$RISEC, order=TRUE,
                            levels=c("assolutamente insufficenti", "scarse",
                                     "adeguate", "ottime"))
levels(giov$RELFAM)<-c("molto","abbastanza","poco", "per niente")
giov$RELFAM<-factor(giov$RELFAM, order=TRUE,
                            levels=c("per niente", "poco","abbastanza", "molto"))
levels(giov$RELAM)<-c("molto","abbastanza","poco", "per niente")
giov$RELAM<-factor(giov$RELAM, order=TRUE,
                            levels=c("per niente", "poco","abbastanza", "molto"))
levels(giov$TEMLIB)<-c("molto","abbastanza","poco", "per niente")
giov$TEMLIB<-factor(giov$TEMLIB, order=TRUE,
                            levels=c("per niente", "poco","abbastanza", "molto"))
levels(giov$FUTUASP)<-c("migliorera","restera la stessa","peggiorera", "non so")
giov$FUTUASP<-factor(giov$FUTUASP, order=TRUE,
                            levels=c("non so","peggiorera",
                                     "restera la stessa","migliorera"))

# Define young graduates (diplomati)
giov_dipl_ita <- giov[giov$ISTRMi != "laureato",1:12]
# Define young graduates (laureati)
giov_laur_ita <- giov[giov$ISTRMi != "diplomato",1:12]
