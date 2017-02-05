library(tidyverse)
source('/home/ubuntu/reminder_app/send_email.R')

events <- read_csv('events.csv')
events <- events %>% 
            mutate(date_ty = as.Date(ISOdate(lubridate::year(Sys.Date()), lubridate::month(date), lubridate::day(date))),
                   date_diff = date_ty - Sys.Date()
                   )

email_events <- events %>% filter(date_diff %in% c(0, 3, 5, 7))

if(nrow(email_events) > 0){
events_to_email <- paste(email_events$event, collapse = ', ')
send_email(events_to_email)
}


