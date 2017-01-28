library(dplyr)
#install.packages('RSQLite')
library(RSQLite)
nycfights_gps <- src_sqlite("data_mgmt/nycfights_gps.sqlite3", create = T) 
flights_sqlite <- copy_to(nycfights_gps, flights, temporary = FALSE, 
                          indexes = list(c("year", "month", "day"), "carrier", "tailnum"))
