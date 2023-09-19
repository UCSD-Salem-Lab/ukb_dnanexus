library(dplyr)
library(data.table)

d = fread("afr_unrelated.txt")
d = d[,1]
fwrite(d, file = "afr_unrelated_modified.txt")

d = fread("all_unrelated.txt")
d = d[,1]
fwrite(d, file = "all_unrelated_modified.txt")

d = fread("eur_unrelated.txt")
d = d[,1]
fwrite(d, file = "eur_unrelated_modified.txt")

d = fread("eas_unrelated.txt")
d = d[,1]
fwrite(d, file = "eas_unrelated_modified.txt")

d = fread("sas_unrelated.txt")
d = d[,1]
fwrite(d, file = "sas_unrelated_modified.txt")
