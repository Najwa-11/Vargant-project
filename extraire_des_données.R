library(rhdfs)
hdfs.init()
data <- read.table(hdfs.get("/root"))
