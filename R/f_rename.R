f_rename <- function(df) {

  x <- paste0("rename('1' = '", colnames(df)[1], "') %>% ")

  for(i in 2:ncol(df)) {

    x <- paste(x,
               paste0("rename('", i, "' = '", colnames(df)[i], "') %>% "),
               sep = "\n")
  }


  x <- paste(x,
             'select(!matches("^[0-9]"))',
             sep = "\n\n")

  return(cat(x))
}
