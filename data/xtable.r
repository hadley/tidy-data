# Change defaults for xtable to be more attractive
# Inspired by: http://cameron.bracken.bz/sweave-xtable-booktabs
library(xtable)

xtable <- function(x, file = "", ..., rownames = FALSE){
  table <- xtable::xtable(x, ...)
  print(table, floating = F, hline.after = NULL, 
    add.to.row = list(pos = list(-1,0, nrow(x)), 
    command = c('\\toprule\n ','\\midrule\n  ','\\bottomrule\n')),
    include.rownames = rownames, NA.string = "---",
    file = file, 
    comment = FALSE, timestamp = FALSE
  )
}