library(digest)

#2b. 
tf <- tempfile()
td <- tempdir()
xpt <- "https://www.imls.gov/sites/default/files/pupld13a_csv.zip"
download.file(xpt, tf, mode = "wb")
local.fn <- unzip(tf, exdir = td)

Puout13a <- read.csv(local.fn[1])
Pupld13a <- read.csv(local.fn[2])
Pusum13a <- read.csv(local.fn[3])

#2c. 
save(Puout13a, file = 'puout13a.rda')
save(Pupld13a, file = 'pupld13a.rda')
save(Pusum13a, file = 'pusum13a.rda')

#2d. 
# library(DBI)
# con <- dbConnect(MonetDBLite::MonetDBLite())
