# load libraries  
library(ggplot2)
library(ca)
dataset_acm<- giov_laur_categ[, 6:12]

# perform multiple correspondence analysis 
mca = mjca(dataset_acm)
summary(mca)

# Output 
## 
## Principal inertias (eigenvalues):
## 
##  dim    value      %   cum%   scree plot               
##  1      0.025624  62.3  62.3  ********************     
##  2      0.005548  13.5  75.8  ****                     
##  3      0.000277   0.7  76.4                           
##  4      1e-06000   0.0  76.4                           
##         -------- -----                                 
##  Total: 0.041149                                       
## 
## 
## Columns:
##                           name   mass  qlt  inr    k=1  cor ctr    k=2 cor ctr
## 1  |           SITEC:nonSodd_e |   60  855   64 |  237  833 133 |   38  22  16
## 2  |              SITEC:Sodd_e |   83  847   47 | -172  825  98 |  -28  22  12
## 3  |            SITE:nonSodd_e |   29  760   92 |  367  661 154 |  142  99 107
## 4  |          SITE:medioSodd_e |   90  666   35 |  -70  634  17 |  -16  32   4
## 5  |               SITE:Sodd_e |   24  682   77 | -176  489  30 | -111 193  55
## 6  |           RISEC:nonSodd_e |   39  759   87 |  335  691 175 |  106  69  81
## 7  |              RISEC:Sodd_e |  104  769   32 | -127  699  66 |  -40  70  31
## 8  |          RELFAM:nonSodd_s |    8  832   92 |  444  496  62 | -366 336 196
## 9  |             RELFAM:Sodd_s |  135  834    5 |  -27  509   4 |   21 326  11
## 10 |           RELAM:nonSodd_s |   14  752   93 |  373  426  76 | -327 326 269
## 11 |              RELAM:Sodd_s |  129  747   10 |  -40  429   8 |   34 318  28
## 12 |          TEMLIB:nonSodd_s |   36  825   74 |  215  573  67 | -143 252 136
## 13 |             TEMLIB:Sodd_s |  107  825   25 |  -74  577  23 |   48 248  46
## 14 |            FUTUASP:non so |   22  861   73 |   96  842   8 |  -14  19   1
## 15 |        FUTUASP:peggiorera |    4 1000   89 |  656 1000  69 |  -51   0   2
## 16 | FUTUASP:restera la stessa |   21  157   74 |    7    9   0 |  -28 148   3
## 17 |        FUTUASP:migliorera |   96  907   29 |  -52  867  10 |   11  39   2
##     
## 1  |
## 2  |
## 3  |
## 4  |
## 5  |
## 6  |
## 7  |
## 8  |
## 9  |
## 10 |
## 11 |
## 12 |
## 13 |
## 14 |
## 15 |
## 16 |
## 17 |

# code 
# show multiple correspondence analysis 
mca

# output
## 
##  Eigenvalues:
##            1        2        3        4    
## Value      0.025624 0.005548 0.000277 1e-06
## Percentage 62.27%   13.48%   0.67%    0%   
## 
## 
##  Columns:
##         SITEC:nonSodd_e SITEC:Sodd_e SITE:nonSodd_e SITE:medioSodd_e
## Mass           0.059995     0.082901       0.028882         0.089648
## ChiDist        0.506367     0.367088       0.871933         0.305541
## Inertia        0.015383     0.011171       0.021958         0.008369
## Dim. 1         1.490909    -1.085456       2.307795        -0.441049
## Dim. 2         0.517856    -0.381805       1.926434        -0.212899
##         SITE:Sodd_e RISEC:nonSodd_e RISEC:Sodd_e RELFAM:nonSodd_s RELFAM:Sodd_s
## Mass       0.024460        0.039321     0.103602         0.007951      0.134810
## ChiDist    0.868472        0.726202     0.273856         1.662879      0.098300
## Inertia    0.018449        0.020737     0.007770         0.021985      0.001303
## Dim. 1    -1.106051        2.106891    -0.798740         2.796956     -0.166997
## Dim. 2    -1.499793        1.433446    -0.543239        -4.963322      0.288006
##         RELAM:nonSodd_s RELAM:Sodd_s TEMLIB:nonSodd_s TEMLIB:Sodd_s
## Mass           0.013697     0.129212         0.036278      0.106550
## ChiDist        1.277768     0.135697         0.700487      0.238775
## Inertia        0.022364     0.002379         0.017801      0.006075
## Dim. 1         2.349583    -0.251427         1.355937     -0.464189
## Dim. 2        -4.430802     0.466558        -1.938301      0.655588
##         FUTUASP:non so FUTUASP:peggiorera FUTUASP:restera la stessa
## Mass          0.022500           0.004070                  0.020553
## ChiDist       0.884129           2.286792                  0.928056
## Inertia       0.017588           0.021284                  0.017702
## Dim. 1        0.604093           4.125742                  0.044375
## Dim. 2       -0.195938          -0.696116                 -0.383394
##         FUTUASP:migliorera
## Mass              0.095570
## ChiDist           0.271642
## Inertia           0.007052
## Dim. 1           -0.326862
## Dim. 2            0.150394
library("FactoMineR")
library("factoextra")

# this sets the graph for the multiple correspondence analysis 
dat <- na.omit(giov_laur_categ[,6:12])
# number of categories per variable
cats = apply(dat, 2, function(x) nlevels(as.factor(x)))

mca1 = MCA(dat, graph = FALSE)
acm = data.frame(mca1$var$coord, Variable = rep(names(cats), cats))

# MCA plot of observations and categories
ggplot(data = acm, aes(x = Dim.1, y = Dim.2)) +
  geom_hline(yintercept = 0, colour = "gray60") +
  geom_vline(xintercept = 2, colour = "gray60") +
  geom_point(colour = "gray50", alpha = 0.7) +
  geom_density2d(colour = "gray80") +
  geom_text(data = acm, 
            aes(x = Dim.1, y = Dim.2, 
                label = rownames(acm), colour = Variable)) +
  ggtitle("Grafico Analisi delle corrispondenze Multiple delle Variabili") +
  scale_colour_discrete(name = "Variable")
