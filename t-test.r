# From Ben Bolker
library(reshape2)
library(lme4)
set.seed(1001)
source("data/xtable.r")

x <- rnorm(5, 20, 1)
y <- x + rnorm(5, 2, 1)
df1 <- data.frame(id = seq_along(y), x = x, y = y)
df2 <- melt(df1, id = "id")

xtable(df1, file = "model-1.tex")
xtable(df2, file = "model-2.tex")

t1 <- t.test(df1$x, df1$y, paired = TRUE)
m1 <- lmer(value ~ variable + (1 | id) , data = df2, REML = TRUE)

all.equal(abs(t1$statistic), coef(summary(m1))["variabley","t value"])

# The t statistic is (almost) the same. (all.equal() reports a relative
# difference of 4.618215e-07). REML=TRUE isn't necessary (it's the
# default) but it emphasizes the fact that the paired t test is exactly
# equivalent to REML.