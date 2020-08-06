# i) Association between age and satisfaction for economic situation, in last 12 months

freq_etami_sitec<-table(giov_categ$ETAMi,giov_categ$SITEC)

# print contingency table ETAMi and SITEC
freq_etami_sitec

# chi-squared
chiq<-chisq.test(freq_etami_sitec)

# print contingency table
chiq$expected

# print chi-squared 
chiq

# calculate Cramer 
ass<-assocstats(freq_etami_sitec)

# print Cramer 
ass$cramer

# visualize fourfold 
fourfold(freq_etami_sitec)

par(mfrow=c(1,3))

#mosaicoplot ETAMi<-->SITEC categoria giovani laureati e diplomati
mosaicplot(~giov_categ$ETAMi+ giov_categ$SITEC, data=giov_categ,  shade=TRUE, color=TRUE,las=1)
#mosaicoplot ETAMi<-->SITEC categoria giovani laureati
mosaicplot(~giov_laur_categ$ETAMi+ giov_laur_categ$SITEC, data=giov_laur_categ,  shade=TRUE, color=TRUE,las=1)
#mosaicoplot ETAMi<-->SITEC categoria giovani diplomati
mosaicplot(~giov_dipl_categ$ETAMi+ giov_dipl_categ$SITEC, data=giov_dipl_categ,  shade=TRUE, color=TRUE,las=1)

###
# ii) Association between gender and economic situation, in last 12 months

freq_sesso_sitec<-table(giov_categ$SESSO,giov_categ$SITEC)

freq_sesso_sitec

chiq<-chisq.test(freq_sesso_sitec)

chiq$expected

chiq

ass<-assocstats(freq_sesso_sitec)

ass$cramer

bubbleplot(freq_sesso_sitec)

mosaicplot(~giov_categ$SESSO+ giov_categ$SITEC, data=giov_categ,  shade=TRUE, color=TRUE,las=1)
