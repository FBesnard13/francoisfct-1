f_p_table <- function(df, column) {

  column <- enquo(column)
  x <- df %>% pull(!!column)
  df2 <- data.frame(table(x, useNA = "ifany"))
  colnames(df2) <- c("uniqueValues", "nbOccurences")
  return(df2)

}
