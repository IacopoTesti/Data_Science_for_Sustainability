# This lines show the main dimensions (first two) of the multiple correspondece analysis and the screeplot

# denine active variables  
avq.active<-giov_laur_categ[,c(6:12)]

# delete missing values 
avq.active_2<- na.omit(avq.active)

# frequence analysis of active variables
summary(avq.active_2)

# load libraries for multiple correspondence analysis
library("FactoMineR")
library("factoextra") 

# multiple correspondence analysis active variables 
res.mca <- MCA(avq.active_2, graph = FALSE) #ACM
#print(res.mca)

# print factorial axes 
eigen<- get_eigenvalue(res.mca)
eigen

# output
##        eigenvalue variance.percent cumulative.variance.percent
## Dim.1  0.27909724        19.536807                    19.53681
## Dim.2  0.20556009        14.389206                    33.92601
## Dim.3  0.15641209        10.948847                    44.87486
## Dim.4  0.14288534        10.001973                    54.87683
## Dim.5  0.13271370         9.289959                    64.16679
## Dim.6  0.13009086         9.106360                    73.27315
## Dim.7  0.11867418         8.307193                    81.58035
## Dim.8  0.09995392         6.996775                    88.57712
## Dim.9  0.08663738         6.064617                    94.64174
## Dim.10 0.07654662         5.358263                   100.00000

fviz_contrib(res.mca, choice="var", axes= 1)
fviz_contrib(res.mca, choice="var", axes= 2)

# scree plot
fviz_screeplot(res.mca)
