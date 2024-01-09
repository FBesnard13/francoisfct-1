f_p_table <- function(df, column) {

  x=df[[column]]
  df2 <- data.frame(table(x, useNA = "ifany"))
  colnames(df2) <- c("uniqueValues","nbOccurences")
  return(data.frame(df2))

}
