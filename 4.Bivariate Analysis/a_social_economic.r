# i) Association between economic satisfaction and satisfaction for familiar relationships, in last 12 months
# load library vcd
library(vcd)

giov_categ<-na.omit(giov_categ)

# contingency table 
freq_sitec_relfam<-table(giov_categ$RELFAM,giov_categ$SITEC)

# print table 
freq_sitec_relfam

# define chi-squared
chiq<-chisq.test(freq_sitec_relfam)

#  print theorical contingency table
chiq$expected

# print chi-squared 
chiq

# calculate Cramer
ass<-assocstats(freq_sitec_relfam)
# print Cramer
ass$cramer

# load library labstatR
library(labstatR)

# visualize through fourfold graph the empirical contingency table 
fourfold(freq_sitec_relfam)

# mosaicoplot SITEC and RELFAM young graduates
mosaicplot(~giov_categ$SITEC+ giov_categ$RELFAM, data=giov_categ,  shade=TRUE, color=TRUE,las=1)

par(mfcol=c(1,2))

# mosaicoplot SITEC and RELFAM young graduates
mosaicplot(~giov_laur_categ$SITEC+ giov_laur_categ$RELFAM, data=giov_laur_categ,  shade=TRUE, color=TRUE,las=1)

# mosaicoplot SITEC and RELFAM young graduates
mosaicplot(~giov_dipl_categ$SITEC+ giov_dipl_categ$RELFAM, data=giov_dipl_categ,  shade=TRUE, color=TRUE,las=1)

###
# ii) Association between familiar economic situation and satisfaction for familiar relationships, in last 12 months

freq_relfam_site<-table(giov_categ$RELFAM,giov_categ$SITE)

# print contingency table RELFAM and SITE
freq_relfam_site

# chi-squared
chiq<-chisq.test(freq_relfam_site)

# print theoretical contingency table 
chiq$expected

# print chi-squared
chiq

# calculate Cramer 
ass<-assocstats(freq_relfam_site)

# print Cramer
ass$cramer

# visualize bubble plot 
bubbleplot(freq_relfam_site)

mosaicplot(~giov_categ$SITE+ giov_categ$RELFAM, data=giov_categ,  shade=TRUE, color=TRUE,las=1)

###
# iii) Association between familiar economic situation and satisfaction for spare time, in last 12 months

freq_site_temlib<-table(giov_categ$TEMLIB,giov_categ$SITE)

# contingency table TEMPLIB and SITE
freq_site_temlib

# chi-squared
chiq<-chisq.test(freq_site_temlib)

chiq$expected

# print chi-squared
chiq

# calculate Cramer
ass<-assocstats(freq_site_temlib)

# print Cramer 
ass$cramer

# bubble plot
bubbleplot(freq_site_temlib)

# mosaicplot 
mosaicplot(~giov_categ$SITE+ giov_categ$TEMLIB, data=giov_categ,  shade=TRUE, color=TRUE,las=1)
