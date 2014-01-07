source("xtable.r")
library(reshape2)
set.seed(1014)

preg <- matrix(c(NA, sample(20, 5)), ncol = 2, byrow = T)
colnames(preg) <- paste0("treatment", c("a", "b"))
rownames(preg) <- c("John Smith", "Jane Doe", "Mary Johnson")

xtable(preg, "preg-raw-1.tex", rownames = TRUE, align = "lrr")
xtable(t(preg), "preg-raw-2.tex", rownames = TRUE, align = "lrrr")

# Make tidy version

pregm <- melt(preg, id = "name")
names(pregm) <- c("name", "trt", "result")
pregm$trt <- gsub("treatment", "", pregm$trt)

xtable(pregm, "preg-tidy.tex")
