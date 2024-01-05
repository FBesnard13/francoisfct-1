ftable <- function(df, col) {
  x=df[[deparse(substitute(col))]]
  df2 <- data.frame(table(x, useNA = "ifany"))
  colnames(df2) <- c("uniqueValues","nbOccurences")
  return(data.frame(df2))
}


