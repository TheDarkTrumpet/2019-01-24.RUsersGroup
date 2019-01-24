install.packages("plyr")
install.packages("ggplot2")
install.packages("gridExtra")
install.packages("dtplyr")
install.packages("dplyr")
install.packages("RODBC")

library(plyr)
library(ggplot2)
library(RODBC)
library(gridExtra)
library(data.table)
library(dtplyr)
library(dplyr)

# Read from a SQL Database
connectionString <- "driver=freetds;DSN=SqlServer;Database=WorldWideImporters;UID=sa;Pwd=pAssw04d"
dbhandle <- odbcDriverConnect(connectionString)
allData <- sqlQuery(dbhandle, 'select c.CityName, c.LatestRecordedPopulation as CityPopulation,
  s.StateProvinceCode, s.StateProvinceName, s.LatestRecordedPopulation as StatePopulation
  from Application.Cities c left join Application.StateProvinces s ON c.StateProvinceId = s.StateProvinceID')
close(dbhandle)