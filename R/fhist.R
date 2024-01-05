fhist <- function(df, col) {
  x=df[[deparse(substitute(col))]]
  hist(x, main = paste0("Nr of NA: ", sum(is.na(x)), "\n", "Nr of Unique Values: ", length(unique(x))))
}
