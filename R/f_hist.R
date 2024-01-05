f_hist <- function(column) {

  library(ggplot2)
  library(dplyr)

  # Create a temporary dataframe
  df <- data.frame(value = column)

  # Calculate NA and unique values count
  na_count <- sum(is.na(df$value))
  unique_count <- length(unique(df$value))

  # Creating the histogram with a density overlay
  p <- ggplot(df, aes(x = value)) +
    geom_histogram(binwidth = 1, fill = "blue", color = "white") +
    geom_density(alpha = 0.5, fill = "red") +
    theme_bw() +
    labs(title = paste("Distribution of", deparse(substitute(column))),
         subtitle = paste("NAs:", na_count, "| Unique Values:", unique_count))

  return(p)
}
