frename <- function(df) {

  x <- paste0("rename(''='", colnames(df)[1], "') |> ")

  for(i in 2:ncol(df)) {

      x <- paste(x,
        paste0("rename(''='", colnames(df)[i], "') |> "),
        sep = "\n")
  }

  return(cat(x))
}
