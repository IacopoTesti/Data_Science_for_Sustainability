# i) Association between current economic situation and satisfaction of familiar economic situation compared with 1 year ago, in last 12 months.

freq_site_sitec<-table(giov_categ$SITE,giov_categ$SITEC)

freq_site_sitec

chiq<-chisq.test(freq_site_sitec)

chiq$expected

chiq

ass<-assocstats(freq_site_sitec)

ass$cramer

bubbleplot(freq_site_sitec)

freql_site_sitec<-table(giov_laur_categ$SITE,giov_laur_categ$SITEC)
freqd_site_sitec<-table(giov_dipl_categ$SITE,giov_dipl_categ$SITEC)
mosaicplot(~giov_categ$SITE+ giov_categ$SITEC, data=giov_categ,  shade=TRUE, color=TRUE,las=1)

par(mfcol=c(1,2))
mosaicplot(~giov_laur_categ$SITE+ giov_laur_categ$SITEC, data=giov_laur_categ,  shade=TRUE, color=TRUE,las=2)
mosaicplot(~giov_dipl_categ$SITE+ giov_dipl_categ$SITEC, data=giov_dipl_categ,shade=T,las=2)



