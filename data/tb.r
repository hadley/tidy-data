library(reshape2)
library(plyr)
library(stringr)
source("xtable.r")
options(stringsAsFactors = FALSE)

# Load -----------------------------------------------------------------------
raw <- read.csv("tb.csv", na.strings = "")
raw$new_sp <- NULL
raw <- subset(raw, year == 2000)
names(raw)[1] <- "country"

names(raw) <- str_replace(names(raw), "new_sp_", "")
raw$m04 <- NULL
raw$m514 <- NULL
raw$f04 <- NULL
raw$f514 <- NULL

xtable(raw[1:10, 1:11], file = "tb-raw.tex")

# Melt -----------------------------------------------------------------------

clean <- melt(raw, id = c("country", "year"), na.rm = TRUE)
names(clean)[3] <- "column"
names(clean)[4] <- "cases"

clean <- arrange(clean, country, column, year)
xtable(clean[1:15, ], file = "tb-clean-1.tex")

# Break up variable in to sex and age ----------------------------------------

clean$sex <- str_sub(clean$column, 1, 1)

ages <- c("04" = "0-4", "514" = "5-14", "014" = "0-14", "1524" = "15-24", "2534" = "25-34", "3544" = "35-44", "4554" = "45-54", "5564" = "55-64", "65"= "65+", "u" = NA)

clean$age <- factor(ages[str_sub(clean$column, 2)], levels = ages)

clean <- clean[c("country", "year", "sex", "age", "cases")]

xtable(clean[1:15, ], file = "tb-clean-2.tex")
