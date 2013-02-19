read.fwf2 <- function(path, cols) {
  raw_stations <- readLines(path)
  stations <- data.frame(matrix(ncol = 0, nrow = length(raw_stations)))

  for(i in 1:nrow(cols)) {
    field <- cols[i, ]
    stations[[field$name]] <- str_trim(str_sub(raw_stations, field$start, field$end))
  }
  stations[stations == ""] <- NA
  stations[] <- lapply(stations, type.convert, as.is = TRUE)
  
  stations
}
