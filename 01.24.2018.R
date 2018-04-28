install.packages("tidyverse")
library("tidyverse")
library(nycflights13)
library(dplyr)

flights
flights(1:25, 1:8)
class(flights)

#pipe operator that is readable 
#filter to reduce the numeber of rown 
#sort
#select 
#add columns 
#summarize 

flights %>%
filter(month == 1, day ==1)

filter(flights, month == 1 & day ==1)

(jan <- filter(flights, month == 1 & day ==1))

# filter(flights, month ==1)

names(flights)

novdec <- filter(flights, month ==11 | month ==12)
Novdec <- filter(flights, month %in% c(11,12))

nonovdex <- filter(flights, !(month ==11 | month ==12))
novdec1 <- filter(flights, !(month %in% c(11,12)))

filter(flights, arr_delay < 120 | dep_delay < 120)


filter(flights, !(arr_delay <= 120 | dep_delay <= 120))
filter(flights, !(arr_delay < 120 | dep_delay < 120))

#missing values 
NA == NA 
NA =5 


data.frame(novdec %>% 
  filter(flights, arr_delay > 220))

data.frame(novdec %>% 
             filter(flights, arr_delay > 0))
df <- tibble(x= c(1, NA, 3))

?flights
filter(flights, arr_delay >= 120)

p <- filter(flights, dest %in% c("HOU"))

p<- filter(flights, carrier %in% c("UA", "DL"))


filter(flights, arr_delay >= 120 & dep_delay ==0)

filter(flights, dep_delay >= 60 & arr_delay <= 30)

filter(flights, dep_time == 0 & dep_time == 600)

?between 

filter(flights, between(dep_time, 0, 600))

filter(flights, is.na(dep_time))

##arrange works like filter 


#flights %>%

arrange(flights, year, month, day)

arrange(flights, -year, -month, -day)

arrange(flights, desc(arr_delay))
        
arrange(df, x)
  
#select

select(flights, year, month, day)

select(flights, year:day)

select(flights, -year, -month)

select(flights, -(year:arr_time))

select(flights, starts_with("arr_"))

select(flights, ends_with("delay"))

#mathces

select(flights, matches("\\_"))

select(flights, 
       minute, 
       everything())
      
select(flights, year, year)

select(flights, contains("TIME"))

transmute(flights,
       game = arr_delay - dep_delay,
       speed = distance/air_time*60, 
       hours = air_time/60) %>%
  head(1000) %>%
  View
#transmute only takes the variables you created 

delay <- flights %>%
  group_by(year, month, day) %>%
  summarise(count = n(),
            delay = mean(dep_delay, na.rm=TRUE), 
            dist = mean(distance, na.rm=TRUE)) %>%
              filter(delay > 35)

ggplot(delay, aes(x=dist, y=delay)) +
  geom_point(aes(size = count), alpha = .3) +
  geom_smooth() +
  theme_bw()
 

flights %>% 
  group_by(carrier) %>% 
  summarise (count=n()) %>%
  mutate(Percentage = round(100*count/sum(count), 3)) 
%>% 
  arrange (desc(Percentage)) %>%
  

read.csv(data = https://raw.githubusercontent.com/JackStat/PracticalDataScience/master/data/winemag-data-130k-v2.csv)
