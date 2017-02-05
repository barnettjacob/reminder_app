library(gmailr)

use_secret_file("reminder-app.json")

send_email <- function(events_to_email){ 

  the_email <- mime(
    To = "jacob.r.barnett@gmail.com",
    From = "jacob.r.barnett@gmail.com",
    Subject = "Reminder of upcoming events",
    body = events_to_email)
  send_message(the_email)
  
  }