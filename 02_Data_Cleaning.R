# Aim of this process is to subset, clean and review the data that is being used for this project. 

# Script dependencies 

library(tidyr)
library(dplyr)
library(ggplot2)
# load in the data
load("~/Soccer-Analytics/data/EPL2526.RData")
load("~/Soccer-Analytics/data/EPL2526_player_stats.RData")
load("~/Soccer-Analytics/data/EPL2526_Final_League_position.RData")
# Review of the data. 

tibble(EPL2526)
#want percentage of goals per position. Perhaps these can be weighted. 
# plot goals for bottom 5 and top 5. 



ggplot(EPL2526_Final_League_position) +
  geom_col(aes(x=Squad, y=GF, fill=`Top Team Scorer`)) + 
  theme(axis.text.x = element_text(angle = 45, hjust=0.8, vjust=0.8)) + 
  ggtitle("Goals for for team") +
  scale_x_discrete(limits =EPL2526_Final_League_position$Squad) 
# nice to have - plot of team colour. 
  
  
  
  

