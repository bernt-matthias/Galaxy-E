#!/usr/bin/env Rscript
#Read xls/xlsx sheets - return tabular
library(readxl)

args <- commandArgs(trailingOnly=TRUE)

sheet <- read_excel(args[1], sheet=args[2])
write.table(sheet, args[3], sep="\t", quote=FALSE, row.names=FALSE)