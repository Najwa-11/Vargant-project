library(RMySQL)
con <- dbConnect(MySQL(), user = "admin", password = "admin123", dbname = "Automobile", host = "localhost")
mydata_Immatriculations <- dbGetQuery(con, "SELECT * FROM Immatriculations")
mydata_Catalogue <- dbGetQuery(con, "SELECT * FROM Catalogue")
mydata_Clients_N <- dbGetQuery(con, "SELECT * FROM Clients_N")
mydata_Marketing <- dbGetQuery(con, "SELECT * FROM Marketing")
dbDisconnect(con)
