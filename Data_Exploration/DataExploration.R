## Course: ISQA8086
## Project: Linda Loring Nature Foundation
## Author: Menglin Qiu

setwd("C:\\Users\\JosephineQiu\\Desktop\\LindaLoringNatureFoundation")

library(tidyverse)
library(ggplot2)
library(ggfortify)
library(caret)

# Temperature Data for Site A:
temp_data <- read_csv("SiteA-Temperature.csv")
ggplot(temp_data,mapping=aes(Year,Temperature),na.rm=TRUE)+geom_point()
boxplot(temp_data$Temperature,xlab="temperature")

temp_2014 <- temp_data[ which(temp_data$Year=='2014'),]
temp_2015 <- temp_data[which(temp_data$Year=='2015'),]
temp_2016 <- temp_data[which(temp_data$Year=='2016'),]
temp_2017 <- temp_data[which(temp_data$Year=='2017'),]
temp_2018 <- temp_data[which(temp_data$Year=='2018'),]
ggplot(temp_2014,mapping=aes(Date_time,Temperature),na.rm=TRUE) + geom_point()+geom_smooth()
ggplot(temp_2015,mapping=aes(Date_time,Temperature),na.rm=TRUE) + geom_point()
ggplot(temp_2016,mapping=aes(Date_time,Temperature),na.rm=TRUE) + geom_point()
ggplot(temp_2017,mapping=aes(Date_time,Temperature),na.rm=TRUE) + geom_point()
ggplot(temp_2018,mapping=aes(Date_time,Temperature),na.rm=TRUE) + geom_point()

ggplot(temp_data,mapping=aes(Time,Temperature),na.rm=TRUE) + geom_point()+geom_smooth()



#Intensity Dataset
intensity <- read_csv("Intensity.csv")
siteA_intensity <- intensity [ which(intensity$Site_Name=='Site A'),]

siteB_intensity <- intensity [ which(intensity$Site_Name=='Site B'),]

siteC_intensity <- intensity [ which(intensity$Site_Name=='Site C'),]

siteD_intensity <- intensity [ which(intensity$Site_Name=='Site D'),]

siteE_intensity <- intensity [ which(intensity$Site_Name=='Site E'),]

siteF_intensity <- intensity [ which(intensity$Site_Name=='Site F'),]

siteG_intensity <- intensity [ which(intensity$Site_Name=='Site G'),]

siteH_intensity <- intensity [ which(intensity$Site_Name=='Site H'),]



library(dplyr)
count <- intensity %>% count(Phenophase_Name=='Breaking leaf buds',Site_Name)
count_by_site <- count[which (count$`Phenophase_Name == "Breaking leaf buds"` == "TRUE"),]

barplot(count_by_site$n,main="Site Names and Phenophase counts",xlab="counts of BLB",
        names.arg = c('A','B','C','D','E','F','G','H') )







