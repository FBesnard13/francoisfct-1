fboxplot <- function(df, col) {
  x=df[[deparse(substitute(col))]]
  boxplot(x, main = paste0("Nr of NA: ", sum(is.na(x)), "\n", "Nr of Unique Values: ", length(unique(x))))
}
