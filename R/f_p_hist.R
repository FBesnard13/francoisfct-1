f_p_hist <- function(df, column) {

  library(ggplot2)
  library(dplyr)

  # Calculate NA and unique values count
  na_count <- sum(is.na(df[[column]]))
  unique_count <- length(unique(df[[column]]))

  # Creating the histogram with a density overlay
  p <- ggplot(df, aes_string(x = column)) +
    geom_histogram(binwidth = 1, fill = "blue", color = "white") +
    geom_density(alpha = 0.5, fill = "red") +
    theme_bw() +
    labs(title = paste("Distribution of", column, "in", deparse(substitute(df))),
         subtitle = paste("NAs:", na_count, "| Unique Values:", unique_count))

  return(p)
}


