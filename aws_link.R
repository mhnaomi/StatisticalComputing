library(RMySQL)
library(DBI)
con <- dbConnect(MySQL(),
                 user = 'mh45',
                 password = .rs.askForPassword("Enter password:"),
                 host = "php2560.cpsqe6w9b1s0.us-west-2.rds.amazonaws.com",
                 dbname = "stat_mh")
