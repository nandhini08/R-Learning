setwd("C:/Dataryte/Marriot")

library(dplyr)
## 
## Attaching package: 'dplyr'
## 
## The following objects are masked from 'package:stats':
## 
##     filter, lag
## 
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
library(lubridate)
library(ggplot2)
library(tm)
library(scales)
library(topicmodels)

# load data for a hotel
# currently 3 datasets available from scraping trip advisor data
#    1. J W Marriott, Indianapolis (label: jwmarriott)
#    2. Hampton Inn Indianapolis Northwest -100 (label: hamptoninn)
#    3. Conrad Indianapolis (label: conrad)
#

hotellist=c("jwmarriott","conrad","hamptoninn")


# load hotel review data for each hotel and return the following for each hotel
# * Data frame with hotel reviews
# * Top 3 records
# * Number of reviews in dataset
# * frequency of different ratings
dfrating.l=lapply(hotellist,
                  function(x) {
                    filenm=paste("dfrating_",x,".Rda",sep="")
                    load(filenm)
                    return(list(dfrating=dfrating,
                                top3records=head(dfrating,3),
                                numrevs=nrow(dfrating),
                                freqRating=table(dfrating$ratingnum)))
                  })
names(dfrating.l)=hotellist

dfrating.l[["jwmarriott"]]$top3records