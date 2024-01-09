f_hist <- function(column) {

  # Create a temporary dataframe
  df <- data.frame(value = column)

  # Calculate NA and unique values count
  na_count <- sum(is.na(df$value))
  unique_count <- length(unique(df$value))

  # Creating the histogram with a density overlay
  p <- ggplot(df, aes(x = value)) +
    geom_histogram(fill = "blue", color = "white") +
    theme_bw() +
    labs(title = paste("Distribution of", deparse(substitute(column))),
         subtitle = paste("NAs:", na_count, "| Unique Values:", unique_count))

  return(p)
}
