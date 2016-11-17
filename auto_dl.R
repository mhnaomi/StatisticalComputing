library(pacman)
pacman::p_load(RCurl, foreign, downloader, survey, srvyr, ggplot2, dplyr)

setwd("~/Google Drive/Brown/Year3/PHP2560 Statistical Computing/Inclass Projects")

list <- list(NULL)

for (i in 2011:2015){
  
  tf <- tempfile()
  td <- tempdir()
  
  xpt <- paste0("http://www.cdc.gov/brfss/annual_data", i, "/files/LLCP", i, "XPT.ZIP" )
  
  download_cached(xpt, tf, mode = "wb")
  
  local.fn <- unzip(tf, exdir = td)
  
  brfss <- read.xport(local.fn)
  
  name <- paste0("brfss", i, ".rda")
  save(brfss, file = paste(name))
}


tf <- tempfile()
td <- tempdir()
xpt <- "https://www.imls.gov/sites/default/files/pupld13a_csv.zip"
download.file(xpt, tf, mode = "wb")
local.fn <- unzip(tf, exdir = td)
head(local.fn[1])
puout13a <- read.csv(local.fn[1])

library(DBI) 
con <- dbConnect(MonetDBLite::MonetDBLite())
