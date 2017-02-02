library(dplyr)
#get data
setwd("~/R/intersections")
nztaintersections <- read.csv("high-risk-intersections.csv")
coordconvert <- read.csv("intersection-coord-conversion.csv")

i <- nztaintersections %>% filter(Rank!="NA") %>% left_join(coordconvert)
