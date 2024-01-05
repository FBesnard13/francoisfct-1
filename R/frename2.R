

frename2 <- function(df) {

  x <- paste0("rename('1' = '", colnames(df)[1], "') |> ")

  for(i in 2:ncol(df)) {

    x <- paste(x,
               paste0("rename('", i, "' = '", colnames(df)[i], "') |> "),
               sep = "\n")
  }

  return(cat(x))
}

