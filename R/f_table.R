f_p_table <- function(column) {

  df2 <- data.frame(table(column, useNA = "ifany"))
  colnames(df2) <- c("uniqueValues","nbOccurences")
  return(data.frame(df2))

}
