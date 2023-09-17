library(tidyverse)
d <- read_csv("WhatsgoodlyData.csv") 

platforms <- factor(d$Answer, 
                    levels=c("Instagram",
                             "Facebook",
                             "Twitter",
                             "Snapchat"))
pairwise.wilcox.test(d$Percentage, 
                     platforms,  
                     p.adjust.method = p.adjust.methods, 
                     paired = F, 
                     na.rm = T, 
                     at = c[0,1,NA,3,4],)


