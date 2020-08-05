# Check structure of dataframe created
str(giov)

# Output 
## 'data.frame':    5012 obs. of  12 variables:
##  $ ETAMi  : Factor w/ 2 levels "20-24","25-34": 1 2 1 1 2 2 2 2 2 1 ...
##  $ SESSO  : Factor w/ 2 levels "maschio","femmina": 1 2 1 2 2 1 2 2 2 2 ...
##  $ ISTRMi : Factor w/ 2 levels "laureato","diplomato": 2 1 2 1 1 1 2 2 1 2 ...
##  $ REGMF  : Factor w/ 20 levels "piemonte","valleAosta",..: 7 7 7 7 7 9 9 9 9 15 ...
##  $ RIPMF  : Factor w/ 6 levels "nord-ovest","nord-est",..: 1 1 1 1 1 3 3 3 3 4 ...
##  $ SITEC  : Ord.factor w/ 4 levels "per niente"<"poco"<..: 2 3 3 3 1 2 2 2 2 3 ...
##  $ SITE   : Ord.factor w/ 5 levels "molto peggiorata"<..: 3 3 3 3 3 3 2 2 3 3 ...
##  $ RISEC  : Ord.factor w/ 4 levels "assolutamente insufficenti"<..: 3 3 3 3 3 3 2 2 3 3 ...
##  $ RELFAM : Ord.factor w/ 4 levels "per niente"<"poco"<..: 2 3 4 4 3 3 3 3 4 3 ...
##  $ RELAM  : Ord.factor w/ 4 levels "per niente"<"poco"<..: 2 3 3 3 3 4 2 3 4 3 ...
##  $ TEMLIB : Ord.factor w/ 4 levels "per niente"<"poco"<..: 2 4 3 3 3 4 3 3 2 3 ...
##  $ FUTUASP: Ord.factor w/ 4 levels "non so"<"peggiorera"<..: 3 NA 4 4 1 4 4 4 3 4 ...

# Summary statistics 
summary(giov)

# Output
##    ETAMi          SESSO            ISTRMi           REGMF     
##  20-24:1664   maschio:2481   laureato :1538   campania : 427  
##  25-34:3348   femmina:2531   diplomato:3474   lombardia: 419  
##                                               trentino : 341  
##                                               puglia   : 324  
##                                               sicilia  : 314  
##                                               piemonte : 306  
##                                               (Other)  :2881  
##         RIPMF             SITEC                    SITE     
##  nord-ovest:1021   per niente: 578   molto peggiorata: 243  
##  nord-est  :1048   poco      :1682   un pò peggiorata: 983  
##  centro    : 867   abbastanza:2415   quasi inalterata:3097  
##  sud       :1590   molto     : 272   un pò migliorata: 589  
##  isole     : 486   NA's      :  65   molto migliorata:  69  
##  non disp  :   0                     NA's            :  31  
##                                                             
##                         RISEC             RELFAM            RELAM     
##  assolutamente insufficenti: 209   per niente:  55   per niente:  68  
##  scarse                    :1506   poco      : 266   poco      : 388  
##  adeguate                  :3194   abbastanza:2624   abbastanza:2795  
##  ottime                    :  73   molto     :1997   molto     :1692  
##  NA's                      :  30   NA's      :  70   NA's      :  69  
##                                                                       
##                                                                       
##         TEMLIB                  FUTUASP    
##  per niente: 167   non so           : 933  
##  poco      :1067   peggiorera       : 150  
##  abbastanza:2794   restera la stessa: 850  
##  molto     : 913   migliorera       :3010  
##  NA's      :  71   NA's             :  69  
