library(gmailr)

use_secret_file("reminder-app.json")

test_email <- mime(
  To = "jacob.r.barnett@gmail.com",
  From = "jacob.r.barnett@gmail.com",
  Subject = "this is just another gmailr test",
  body = "Can you still hear me?")
send_message(test_email)