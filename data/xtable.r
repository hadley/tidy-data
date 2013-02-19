# Change defaults for xtable to be more attractive
# Inspired by: http://cameron.bracken.bz/sweave-xtable-booktabs
library(xtable)

xtable <- function(x, file = "", ...){
  table <- xtable::xtable(x, ...)
  print(table, floating = F, hline.after = NULL, 
    add.to.row = list(pos = list(-1,0, nrow(x)), 
    command = c('\\toprule\n ','\\midrule\n  ','\\bottomrule\n')),
    include.rownames = FALSE, NA.string = "---",
    file = file
  )
}