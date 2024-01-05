f_p_boxplot <- function(df, column) {
  library(ggplot2)
  library(dplyr)

  # Calculate NA and unique values count
  na_count <- sum(is.na(df[[column]]))
  unique_count <- length(unique(df[[column]]))

  # Creating the box plot with a thicker outline and no x-axis text
  p <- ggplot(df, aes_string(y = column)) +
    geom_boxplot(fill = "blue", color = "black", alpha = 0.5, size = 1.5) +
    theme_bw() +
    theme(axis.text.x = element_blank(), axis.ticks.x = element_blank()) +
    labs(title = paste("Box Plot of", column, "in", deparse(substitute(df))),
         subtitle = paste("NAs:", na_count, "| Unique Values:", unique_count))

  return(p)
}

# Visualize the 'displ' column from the 'mpg' dataset using the modified box plot
f_p_boxplot(mpg, "hwy")
