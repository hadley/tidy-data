library(reshape2)
source("xtable.r")

df <- data.frame(row = letters[1:3], a = 1:3, b = 4:6, c = 7:9)
xtable(df, "melt-raw.tex")

dfm <- melt(df, id = "row")
names(dfm)[2] <- "column"
xtable(dfm, "melt-output.tex")
