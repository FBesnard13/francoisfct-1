f_p_hist <- function(df, column) {

  # Calculate NA and unique values count
  na_count <- sum(is.na(df[[column]]))
  unique_count <- length(unique(df[[column]]))

  # Creating the histogram with a density overlay
  p <- ggplot(df, aes_string(x = column)) +
    geom_histogram(fill = "blue", color = "white") +
    theme_bw() +
    labs(title = paste("Distribution of", column, "in", deparse(substitute(df))),
         subtitle = paste("NAs:", na_count, "| Unique Values:", unique_count))

  return(p)
}
