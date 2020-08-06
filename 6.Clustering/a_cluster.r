giov_laur_ita_categ<-giov_laur_categ

head(giov_laur_ita_categ,10)

# output
##     ETAMi   SESSO   ISTRMi    REGMF      RIPMF     SITEC        SITE     RISEC
## 14  25-34 femmina laureato  liguria nord-ovest    Sodd_e medioSodd_e    Sodd_e
## 19  20-24 femmina laureato  liguria nord-ovest    Sodd_e medioSodd_e    Sodd_e
## 27  25-34 femmina laureato  liguria nord-ovest nonSodd_e medioSodd_e    Sodd_e
## 48  25-34 maschio laureato  toscana     centro nonSodd_e medioSodd_e    Sodd_e
## 68  25-34 femmina laureato  toscana     centro nonSodd_e medioSodd_e    Sodd_e
## 99  25-34 maschio laureato campania        sud    Sodd_e medioSodd_e    Sodd_e
## 166 25-34 femmina laureato trentino   nord-est    Sodd_e medioSodd_e    Sodd_e
## 185 25-34 femmina laureato  toscana     centro nonSodd_e medioSodd_e    Sodd_e
## 191 25-34 femmina laureato  toscana     centro nonSodd_e medioSodd_e nonSodd_e
## 192 25-34 femmina laureato  toscana     centro nonSodd_e medioSodd_e nonSodd_e
##     RELFAM  RELAM    TEMLIB           FUTUASP
## 14  Sodd_s Sodd_s    Sodd_s              <NA>
## 19  Sodd_s Sodd_s    Sodd_s        migliorera
## 27  Sodd_s Sodd_s    Sodd_s            non so
## 48  Sodd_s Sodd_s    Sodd_s        migliorera
## 68  Sodd_s Sodd_s nonSodd_s restera la stessa
## 99  Sodd_s Sodd_s    Sodd_s        migliorera
## 166 Sodd_s Sodd_s    Sodd_s        migliorera
## 185 Sodd_s Sodd_s    Sodd_s        migliorera
## 191 Sodd_s Sodd_s    Sodd_s            non so
## 192 Sodd_s Sodd_s nonSodd_s        migliorera

# define active variables for italian youngsters
avq.active<- na.omit(giov_laur_ita_categ[, 6:12])
head(avq.active,10)

# output
##         SITEC        SITE     RISEC RELFAM  RELAM    TEMLIB           FUTUASP
## 19     Sodd_e medioSodd_e    Sodd_e Sodd_s Sodd_s    Sodd_s        migliorera
## 27  nonSodd_e medioSodd_e    Sodd_e Sodd_s Sodd_s    Sodd_s            non so
## 48  nonSodd_e medioSodd_e    Sodd_e Sodd_s Sodd_s    Sodd_s        migliorera
## 68  nonSodd_e medioSodd_e    Sodd_e Sodd_s Sodd_s nonSodd_s restera la stessa
## 99     Sodd_e medioSodd_e    Sodd_e Sodd_s Sodd_s    Sodd_s        migliorera
## 166    Sodd_e medioSodd_e    Sodd_e Sodd_s Sodd_s    Sodd_s        migliorera
## 185 nonSodd_e medioSodd_e    Sodd_e Sodd_s Sodd_s    Sodd_s        migliorera
## 191 nonSodd_e medioSodd_e nonSodd_e Sodd_s Sodd_s    Sodd_s            non so
## 192 nonSodd_e medioSodd_e nonSodd_e Sodd_s Sodd_s nonSodd_s        migliorera
## 218    Sodd_e medioSodd_e    Sodd_e Sodd_s Sodd_s    Sodd_s        peggiorera

# this line performs the multiple correspondece analysis
# ncp: number of dimensions kept in the result
res2.mca <- MCA(avq.active, ncp = 2, graph = FALSE)

# this line performs the cluster analysis
res.hcpc <- HCPC(res2.mca, nb.clust = -1, graph = TRUE)
