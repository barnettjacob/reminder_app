library(readr)
library(dplyr)
library(lubridate)

events <- read_csv('events.csv')
events <- events %>% 
            mutate(date_ty = as.Date(ISOdate(year(Sys.Date()), month(date), day(date))),
                   date_diff = )



