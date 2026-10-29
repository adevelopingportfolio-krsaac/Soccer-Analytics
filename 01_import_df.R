### 01_import_df.R ####

# Want to conduct an investigation of EPL data and see what we can predict. There are numerous webpages that contain a wealth
# of publicly available data. Current method is to manually download into R. 
 
# 1 find data
# 2 read in the data
# 3 prelim investigation to see if it works for the process
# 4 save to project folder under data
# 5 push to gitlab


### 1 Source:: https://github.com/RezaGooner/english-premier-league-match-dataset/blob/main/Data/EPL_Match_Data_2000_2026.csv ####

# issues with establishing con to URLs with this version of RStudio. So manual download of data. 

# Script dependencies.#### 

# We have a full database of EPL matches. 

library(readr)
library(tidyr)
library(dplyr)

# Read data ####
EPL_Match_Data_2000_2026 <- read_csv("~/DS_App/EPL_Match_Data_2000_2026.csv")


# view data
tibble(EPL_Match_Data_2000_2026)
# 9880 records over 85 columns. 


# what is the str of the df.
str(EPL_Match_Data_2000_2026)
#Season = col_double()


# Subset the data ####
# lets focus on the previous season. 25/26. 

EPL2526 <- EPL_Match_Data_2000_2026 %>% # create new object on 2526 season
  mutate(Season = as.character(Season)) %>% #could not filter on season in current format. Convert to char
  filter(Season == "2526") %>% #filter to previous season
  select(-Season) #do not need this character column anymore so lets drop it. 


# looking at str, there may be a large number of columns that can be dropped as they do not relate to EPL.


# save #### 

# push to folder. Normally I would not push any data to github/lab but in this instance it is public data. 


save(EPL2526, file= "~/Soccer-Analytics/data/EPL2526.RData")
