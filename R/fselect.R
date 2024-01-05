fselect <- function(df) {

  x <- colnames(df)[1]

  for(i in 2:ncol(df)) {

    x <- paste(x, colnames(df)[i],
               sep = ",\n")
  }

  return(cat(x))
}





